# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

###
# General
###

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

###
# Web One
###

config :web_one,
  ecto_repos: [WebOne.Repo]

# Configures the endpoint
config :web_one, WebOneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GhsxDFWdoYZV7IW+jSaEwsP3w+kSOQghp1amlsqXCMaHHReAnoxET9MM1YPWyaTd",
  render_errors: [view: WebOneWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WebOne.PubSub,
  live_view: [signing_salt: "YS5WjrAv"]

###
# Web Two
###

config :web_two,
  ecto_repos: [WebTwo.Repo]

# Configures the endpoint
config :web_two, WebTwoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u6zverdwsGY4N5kRRDajCmKqZv0/TRGpVE1cg9r8HF4QwZB0v7naKmN0IC3Wyk4Y",
  render_errors: [view: WebTwoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WebTwo.PubSub,
  live_view: [signing_salt: "Cc2lfvFg"]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
