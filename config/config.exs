# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :voice,
  ecto_repos: [Voice.Repo]

# Configures the endpoint
config :voice, Voice.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VaGa64expmDfy24Ow9WS1FzyNq+VvrFEHSteei/2hJhkpX1fEeZTkORSEosQ7i5B",
  render_errors: [view: Voice.ErrorView, accepts: ~w(json)],
  pubsub: [name: Voice.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
