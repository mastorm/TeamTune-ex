defmodule TeamTune.Repo.Migrations.CreateRatingAttributes do
  use Ecto.Migration

  def change do
    create table(:rating_attributes) do
      add :comment, :string
      add :value, :float, null: false
      add :attribute, references(:attributes, on_delete: :nothing), null: false
      add :rating, references(:ratings, on_delete: :nothing), null: false

      timestamps(type: :utc_datetime)
    end

    create index(:rating_attributes, [:attribute])
    create index(:rating_attributes, [:rating])
  end
end
