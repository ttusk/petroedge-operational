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

## Consumir a API

- gRPC: `localhost:50051`
- UI: `http://localhost:8080`
- Contrato: `proto/petroedge/operational/v1/operational_data.proto`
- RPCs: `RegisterAsset`, `GetAsset` e `IngestTelemetry`

Configure `GRPC_PORT` e `GRPC_UI_PORT` no `.env` para alterar as portas.
