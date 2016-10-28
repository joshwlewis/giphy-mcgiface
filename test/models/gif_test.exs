defmodule GiphyMcgiface.GifTest do
  use GiphyMcgiface.ModelCase

  alias GiphyMcgiface.Gif

  @valid_attrs %{url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Gif.changeset(%Gif{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Gif.changeset(%Gif{}, @invalid_attrs)
    refute changeset.valid?
  end
end
