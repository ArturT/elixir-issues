# Issues

Project based on example in book Programming Elixir by Dave Thomas.

CLI app to fetch issues from Github.

## Tips

Test CLI:

    $ mix run -e 'Issues.CLI.run(["-h"])'
    usage: issues <user> <project> [ count | 4 ]

    $ mix run -e 'Issues.CLI.run(["elixir-lang", "elixir"])'

Test fetch:

    iex> Issues.GithubIssues.fetch("elixir-lang", "elixir")
    iex> Issues.GithubIssues.fetch("ArturT", "knapsack")

Test run:

    iex> Issues.CLI.run(["ArturT", "knapsack"])

## Command-Line Executable

    $ mix escript.build

Run program:

    $ ./issues ArturT knapsack 2
    nu | created_at           | title
    ---+----------------------+---------------------------------------------
    15 | 2015-04-16T01:51:08Z | Generate multiple reports and aggregate them
    32 | 2016-03-09T16:20:44Z | Using Knapsack with shoulda_context

## Docs

Generate docs:

    $ mix docs
    $ open doc/index.html

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

