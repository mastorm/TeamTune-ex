defmodule TeamTune.Repo do
  use Ecto.Repo,
    otp_app: :team_tune,
    adapter: Ecto.Adapters.Postgres
end
