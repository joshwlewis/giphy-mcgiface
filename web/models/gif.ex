defmodule GiphyMcgiface.Gif do
  use GiphyMcgiface.Web, :model

  schema "gifs" do
    field :url, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:url])
    |> validate_required([:url])
  end
end
