defmodule GiphyMcgiface.Repo.Migrations.CreateGif do
  use Ecto.Migration

  def change do
    create table(:gifs, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :url, :string

      timestamps()
    end

  end
end
