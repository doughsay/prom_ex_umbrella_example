use Mix.Config

###
# General
###

# Print only warnings and errors during test
config :logger, level: :warn

###
# Web One
###

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_one, WebOneWeb.Endpoint,
  http: [port: 4002],
  server: false

###
# Web Two
###

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_two, WebTwoWeb.Endpoint,
  http: [port: 4003],
  server: false
