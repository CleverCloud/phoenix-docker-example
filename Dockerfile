FROM trenpixster/elixir:latest

RUN mkdir phoenixapp

WORKDIR phoenixapp

COPY ./mix.exs /phoenixapp/mix.exs
COPY ./mix.lock /phoenixapp/mix.lock

RUN mix do deps.get

COPY ./ /phoenixapp

ENV PORT 8080
ENV MIX_ENV prod

RUN mix do compile

EXPOSE 8080

ENTRYPOINT ["mix", "phoenix.server"]
