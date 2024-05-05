defmodule TeamTune.Ratings.Rating do
  alias TeamTune.Ratings.RatingAttribute
  alias TeamTune.Accounts.User
  use Ecto.Schema
  import Ecto.Changeset

  schema "ratings" do
    field :comment, :string
    belongs_to :subject, User
    belongs_to :owner, User
    has_many :rating_attributes, RatingAttribute

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(rating, attrs) do
    rating
    |> cast(attrs, [:subject, :comment])
    |> validate_required([:subject, :comment])
  end
end
