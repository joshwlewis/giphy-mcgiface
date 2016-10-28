# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :giphy_mcgiface,
  ecto_repos: [GiphyMcgiface.Repo]

# Configures the endpoint
config :giphy_mcgiface, GiphyMcgiface.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4ElLdwQCdKzdt7s3O371RerjzTIbaEEgoK4+wHAqh6LnjwfijYZZCuJ2VgSu9TX6",
  render_errors: [view: GiphyMcgiface.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GiphyMcgiface.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure phoenix generators
config :phoenix, :generators,
  binary_id: true

# Configure your database
config :giphy_mcgiface, GiphyMcgiface.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: System.get_env("DB_POOL") || 10

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
