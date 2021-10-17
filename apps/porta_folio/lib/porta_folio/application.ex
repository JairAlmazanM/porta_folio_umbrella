defmodule PortaFolio.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PortaFolio.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: PortaFolio.PubSub}
      # Start a worker by calling: PortaFolio.Worker.start_link(arg)
      # {PortaFolio.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: PortaFolio.Supervisor)
  end
end
