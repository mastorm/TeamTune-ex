defmodule TeamTune.Repo.Migrations.CreateRatings do
  use Ecto.Migration

  def change do
    create table(:ratings) do
      add :comment, :string
      add :owner, references(:users, on_delete: :nothing), null: false
      add :subject, references(:users, on_delete: :nothing), null: false

      timestamps(type: :utc_datetime)
    end

    create index(:ratings, [:owner])
  end
end
