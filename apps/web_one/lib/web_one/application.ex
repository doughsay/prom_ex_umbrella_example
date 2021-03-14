defmodule WebOne.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      WebOne.Repo,
      # Start the Telemetry supervisor
      WebOneWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: WebOne.PubSub},
      # Start the Endpoint (http/https)
      WebOneWeb.Endpoint
      # Start a worker by calling: WebOne.Worker.start_link(arg)
      # {WebOne.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WebOne.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    WebOneWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end