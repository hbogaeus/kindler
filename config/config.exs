# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :kindler, KindlerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v7rtasnAtHpC2ztLCIE8KcAV/1J2MryoDMw9s2KnshouXWaoyydydj99TOQze8Bf",
  render_errors: [view: KindlerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kindler.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  colors: [enabled: true],
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
