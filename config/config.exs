# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todoapp,
  ecto_repos: [Todoapp.Repo]

# Configures the endpoint
config :todoapp, TodoappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uHew6cVvjxJYg9wrLJAu4GFsvo4Aa6jDPX1ey+CPoKBSQY8CIUQRgY2p44QLnarP",
  render_errors: [view: TodoappWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Todoapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
