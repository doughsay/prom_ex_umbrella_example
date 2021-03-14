use Mix.Config

###
# General
###

# Print only warnings and errors during test
config :logger, level: :warn

###
# Web One
###

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :web_one, WebOne.Repo,
  username: "postgres",
  password: "postgres",
  database: "web_one_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_one, WebOneWeb.Endpoint,
  http: [port: 4002],
  server: false

###
# Web Two
###

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :web_two, WebTwo.Repo,
  username: "postgres",
  password: "postgres",
  database: "web_two_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_two, WebTwoWeb.Endpoint,
  http: [port: 4002],
  server: false
