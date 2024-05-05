defmodule TeamTune.Ratings.RatingAttribute do
  alias TeamTune.Ratings.Rating
  alias TeamTune.Attribute
  use Ecto.Schema
  import Ecto.Changeset

  schema "rating_attributes" do
    field :value, :float
    field :comment, :string
    belongs_to :attribute, Attribute
    belongs_to :rating, Rating

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(rating_attribute, attrs) do
    rating_attribute
    |> cast(attrs, [:comment, :value])
    |> validate_required([:value])
  end
end
