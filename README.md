# petroedge-operational

Serviço operacional da PetroEdge. Este repositório contém somente este serviço; os demais componentes vivem em repositórios próprios.

## Desenvolvimento local

Requisitos: Elixir 1.20, Docker Compose e `protoc` para regenerar o contrato protobuf.

```bash
cp .env.example .env
set -a; source .env; set +a
make deps
make db-up
make build
make test
make run
```

O `make run` inicia o serviço no host. O Compose inicia apenas o PostgreSQL local.

## Protobuf

```bash
make proto.generate
```

O comando exige que o executável `protoc` esteja disponível no `PATH`.

## Kubernetes

Os manifestos ficam em `deploy/k8s/`. Para aplicar o ambiente de demonstração:

```bash
kubectl apply -k deploy/k8s/demo/
```

Os manifestos esperam a imagem `operational:latest`.

## Integração

O repositório `petroedge-infra` inclui este serviço em:

```text
services/petroedge-operational/compose.yaml
```

Esse Compose fornece o PostgreSQL usado pelo serviço.