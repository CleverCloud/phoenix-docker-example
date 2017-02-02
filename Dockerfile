FROM elixir:latest

RUN wget -q https://nodejs.org/dist/v6.2.0/node-v6.2.0-linux-x64.tar.xz -O /tmp/node.tar.xz \
  && tar xfJ /tmp/node.tar.xz --strip-components=1 \
  && rm /tmp/node.tar.xz

RUN mkdir phoenixapp
WORKDIR phoenixapp

RUN mix local.hex --force
RUN mix local.rebar --force
COPY ./mix.exs /phoenixapp/mix.exs
COPY ./mix.lock /phoenixapp/mix.lock
RUN mix deps.get --only prod

COPY ./ /phoenixapp

ENV PORT 8080
ENV MIX_ENV prod

RUN mix compile
RUN npm install
RUN node_modules/brunch/bin/brunch build --production
RUN mix phoenix.digest

EXPOSE 8080
ENTRYPOINT ["mix", "phoenix.server"]
