FROM bitwalker/alpine-elixir-phoenix:latest

ENV MIX_ENV=dev

# Cache elixir deps
COPY mix.exs mix.lock ./
COPY apps/app_one/mix.exs ./apps/app_one/
COPY apps/app_two/mix.exs ./apps/app_two/
COPY apps/web_one/mix.exs ./apps/web_one/
COPY apps/web_two/mix.exs ./apps/web_two/
COPY apps/prom_metrics/mix.exs ./apps/prom_metrics/
RUN mix do deps.get, deps.compile

# Same with npm deps
COPY apps/web_one/assets/package.json apps/web_one/assets/
COPY apps/web_two/assets/package.json apps/web_two/assets/
RUN cd apps/web_one/assets && npm install
RUN cd apps/web_two/assets && npm install

COPY . .

# Run frontend build, compile, and digest assets
RUN cd apps/web_one/assets/ && \
  npm run deploy && \
  cd .. && \
  mix do compile, phx.digest

# Run frontend build, compile, and digest assets
RUN cd apps/web_two/assets/ && \
  npm run deploy && \
  cd .. && \
  mix do compile, phx.digest

USER root

CMD ["mix", "phx.server"]
