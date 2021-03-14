import Config

###
# General
###

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime

###
# Web One
###

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with webpack to recompile .js and .css sources.
config :web_one, WebOneWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "node_modules/webpack/bin/webpack.js",
      "--mode",
      "development",
      "--watch-stdin",
      cd: Path.expand("../apps/web_one/assets", __DIR__)
    ]
  ]

# Watch static and templates for browser reloading.
config :web_one, WebOneWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"apps/web_one/priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"apps/web_one/priv/gettext/.*(po)$",
      ~r"apps/web_one/lib/web_one_web/(live|views)/.*(ex)$",
      ~r"apps/web_one/lib/web_one_web/templates/.*(eex)$"
    ]
  ]

###
# Web Two
###

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with webpack to recompile .js and .css sources.
config :web_two, WebTwoWeb.Endpoint,
  http: [port: 4001],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "node_modules/webpack/bin/webpack.js",
      "--mode",
      "development",
      "--watch-stdin",
      cd: Path.expand("../apps/web_two/assets", __DIR__)
    ]
  ]

# Watch static and templates for browser reloading.
config :web_two, WebTwoWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"apps/web_two/priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"apps/web_two/priv/gettext/.*(po)$",
      ~r"apps/web_two/lib/web_two_web/(live|views)/.*(ex)$",
      ~r"apps/web_two/lib/web_two_web/templates/.*(eex)$"
    ]
  ]
