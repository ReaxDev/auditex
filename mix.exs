defmodule Auditex.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :auditex,
      version: @version,
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,

      # Hex
      description: description,
      package: package,

      # Docs
      name: "Auditex",
      docs: [
        source_ref: "v#{@version}", main: "Auditex",
        canonical: "http://hexdocs.pm/auditex",
        source_url: "https://github.com/ReaxDev/auditex"
      ]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      # Docs
      {:ex_doc, "~> 0.10", only: :docs},
      {:earmark, "~> 0.1", only: :docs},
      {:inch_ex, ">= 0.0.0", only: :docs}
    ]
  end

  defp package do
      [
        maintainers: ["Sean Hill"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/ReaxDev/auditex"},
        files: ~w(lib CHANGELOG.md LICENSE mix.exs README.md) 
      ]
  end

  defp description do
    """
    Auditex is a package for adding auditing features to ecto and/or Phoenix applications similar to the Ruby paper_trail gem.
    """
  end
end
