use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.

# config :hexlet_basics, :jsroutes,
#   output_folder: "priv/static/js",
#   include: ~r[/api],
#   exclude: ~r[/admin]

# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :hexlet_basics, HexletBasicsWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "./node_modules/.bin/webpack", "--watch-stdin", "--progress", "--color",
      cd: Path.expand("..", __DIR__)
    ]
  ]

# ## SSL Support
#
# In order to use HTTPS in development, a self-signed
# certificate can be generated by running the following
# command from your terminal:
#
#     openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com" -keyout priv/server.key -out priv/server.pem
#
# The `http:` config above can be replaced with:
#
#     https: [port: 4000, keyfile: "priv/server.key", certfile: "priv/server.pem"],
#
# If desired, both `http:` and `https:` keys can be
# configured to run both http and https servers on
# different ports.

# Watch static and templates for browser reloading.
config :hexlet_basics, HexletBasicsWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{lib/hexlet_basics_web/views/.*(ex)$},
      ~r{lib/hexlet_basics_web/templates/.*(eex|slim|slime)$}
    ]
  ]

config :hexlet_basics,
  code_directory: "/tmp/hexlet-basics/code",
  langs: %{"ru.hexlet-basics.test" => "ru", "en.hexlet-basics.test" => "en"},
  docker_command_template: "docker run ~s ~s timeout 10 make --silent -C ~s test",
  ga_ru: "ruGtag",
  ga_en: "enGtag"

# config :rollbax, enabled: :log

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# # Configure your database
# config :hexlet_basics, HexletBasics.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   username: "postgres",
#   password: "",
#   database: "hexlet_basics_dev",
#   hostname: "db",
#   pool_size: 10
