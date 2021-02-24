# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :maypay,
  ecto_repos: [Maypay.Repo]

# Configures the endpoint
config :maypay, MaypayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ijpljYvC4gytjMY+3FUCZVglSCostDjaaXJs8CCWPmLdZESBVCePodzgWbNHktbt",
  render_errors: [view: MaypayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Maypay.PubSub,
  live_view: [signing_salt: "3m9Bjiu5"]

config :maypay, Maypay.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreing_key: [type: :binary_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
