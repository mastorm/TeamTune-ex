defmodule TeamTune.Attribute do
  use Ecto.Schema
  import Ecto.Changeset

  schema "attributes" do
    field :name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(attribute, attrs) do
    attribute
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
