defmodule Zombie.Mixfile do
  use Mix.Project

  def project do
    [apps_path: "apps",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  defp deps do
    [
      # Code style linter
      {:dogma, ">= 0.0.0", only: [:dev, :test]},
      # Automatic test runner
      {:mix_test_watch, ">= 0.0.0", only: :dev},
    ]
  end
end
