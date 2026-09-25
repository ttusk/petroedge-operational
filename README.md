# petroedge-operational

## Subir os serviços

```bash
cp .env.example .env
make up
```

`make up` constrói a imagem, inicia PostgreSQL, executa as migrations e sobe a API gRPC e a UI.

Para parar:

```bash
make down
```

Para apagar o banco:

```bash
make reset
```

> **Obs.:** comandos individuais:
>
> - PostgreSQL: `make db-up` / `make db-down`
> - API no host: `make run`
> - UI: `make ui-up` / `make ui-down`
> - Stack completo: `make up` / `make down`
>

## Kubernetes

```bash
kubectl kustomize deploy/k8s/demo
kubectl kustomize deploy/k8s/prod
```

O overlay `demo` inclui PostgreSQL/PostGIS e credenciais de desenvolvimento. O overlay `prod` não cria banco; espera um `ClusterSecretStore` chamado `petroedge-production` fornecido pelo External Secrets Operator, que materializa `operational-secret` com `DATABASE_URL`.

## Estrutura

- `lib/operational/grpc_server.ex`: dispatcher fino exigido pelo serviço gRPC gerado.
- `lib/operational/grpc/asset_endpoint.ex`: `RegisterAsset` e `GetAsset`.
- `lib/operational/grpc/telemetry_endpoint.ex`: `IngestTelemetry` e `StreamTelemetry`.
- `lib/operational/assets.ex` e `lib/operational/telemetries.ex`: regras de persistência/contextos.

## Consumir a API

- gRPC: `localhost:50051`
- UI: `http://localhost:8080`
- Contrato: `proto/petroedge/operational/v1/operational_data.proto`
- RPCs: `RegisterAsset`, `GetAsset`, `IngestTelemetry` e `StreamTelemetry`

Configure `GRPC_PORT` e `GRPC_UI_PORT` no `.env` para alterar as portas.

### IngestTelemetry

- `accepted` conta apenas eventos novos persistidos; `rejected` conta eventos inválidos ou já processados.
- `errors[].index` é a posição zero-based no stream, com códigos estáveis: `missing_telemetry`, `missing_asset`, `missing_observed_at`, `invalid_observed_at`, `missing_measurements`, `already_processed`, `event_id_conflict` e `invalid_telemetry`.
- Erros de validação são parciais e não interrompem o stream. Falhas de armazenamento encerram a RPC com `UNAVAILABLE` ou `INTERNAL`.
- Envie um `event_id` estável para tornar retries seguros: o mesmo payload retorna `already_processed`; outro payload com o mesmo ID retorna `event_id_conflict`. Sem `event_id`, o servidor não consegue deduplicar retries.

### StreamTelemetry

- Retorna o histórico persistido do ativo, ordenado por `observed_at`.
- `from` é inclusivo; sem `from`, todos os eventos do ativo são retornados.
- A RPC termina depois de enviar os eventos existentes; não é uma assinatura de eventos ao vivo.
- `asset_id` ausente retorna `INVALID_ARGUMENT`; ativo inexistente retorna `NOT_FOUND`.
