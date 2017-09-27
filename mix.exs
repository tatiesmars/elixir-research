defmodule EpochElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :epoch_elixir,
     apps_path: "apps",
     version: "0.1.0",
     elixir: "~> 1.4.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end


  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [applications: [:crypto],
     mod: {EpochElixir.Application, []}]
  end


  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps do
    [{:mock, "~> 0.2.0", only: :test}]
  end
end