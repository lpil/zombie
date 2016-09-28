defmodule Web.Mixfile do
  use Mix.Project

  def project do
    [app: :web,
     version: "0.1.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :cowboy, :plug],
     mod: {Web, []}]
  end

  defp deps do
    [
      # Web server
      {:cowboy, "~> 1.0"},
      # Composable web server abstraction
      {:plug, "~> 1.0"},
      # GraphQL Framework
      {:absinthe, "~> 1.1"},
    ]
  end
end
