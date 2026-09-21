FROM elixir:1.20.4-otp-29-slim AS build

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential git ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
ENV MIX_ENV=prod

RUN mix local.hex --force && mix local.rebar --force
COPY mix.exs mix.lock ./
RUN mix deps.get --only prod && mix deps.compile
COPY config ./config
COPY lib ./lib
COPY priv ./priv
RUN mix compile && mix release
FROM debian:trixie-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates openssl libstdc++6 libsctp1 \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd --system app && useradd --system --gid app app
WORKDIR /app
COPY --from=build --chown=app:app /app/_build/prod/rel/operational ./
ENV LANG=C.UTF-8
USER app
ENTRYPOINT ["/app/bin/operational"]
CMD ["start"]
