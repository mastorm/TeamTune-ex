defmodule TeamTune.Repo.Migrations.CreateAttributes do
  use Ecto.Migration

  def change do
    create table(:attributes) do
      add :name, :string, null: false

      timestamps(type: :utc_datetime)
    end
  end
end
