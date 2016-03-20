# Issues

Project based on example in book Programming Elixir by Dave Thomas.

CLI app to fetch issues from Github.

## Tips

Test CLI:

    $ mix run -e 'Issues.CLI.run(["-h"])'
    usage: issues <user> <project> [ count | 4 ]

    $ mix run -e 'Issues.CLI.run(["elixir-lang", "elixir"])'

Test fetch:

    iex> Issues.GithubIssues.fetch("elixir-lang", "elixirx")

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add issues to your list of dependencies in `mix.exs`:

        def deps do
          [{:issues, "~> 0.0.1"}]
        end

  2. Ensure issues is started before your application:

        def application do
          [applications: [:issues]]
        end

