defmodule PortaFolio.Repo do
  use Ecto.Repo,
    otp_app: :porta_folio,
    adapter: Ecto.Adapters.Postgres
end
