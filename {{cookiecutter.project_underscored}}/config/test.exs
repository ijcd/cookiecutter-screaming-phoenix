use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :{{cookiecutter.project_underscored}}, {{cookiecutter.project_module}}.Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :{{cookiecutter.project_underscored}}, {{cookiecutter.project_module}}.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "{{cookiecutter.project_underscored}}_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
