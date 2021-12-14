defmodule AlphaVantage.MixProject do
  use Mix.Project

  def project do
    [
      app: :alpha_vantage,
      name: "Alpha Vantage",
      description: "A lightweight Elixir wrapper for the Alpha Vantage API.",
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      source_url: "https://github.com/Cameron-Kurth/alpha_vantage",
      docs: [
        extras: ["README.md"],
        main: "readme"
      ]
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:jason, "~> 1.0"},
      {:httpoison, "~> 1.6"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Cameron Kurth"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Cameron-Kurth/alpha_vantage"}
    ]
  end
end
