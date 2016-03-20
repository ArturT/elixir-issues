defmodule Issues.GithubIssues do
  # use a module attribute to fetch the value at compile time
  @github_url Application.get_env(:issues, :github_url)
  @user_agent [ {"User-agent", "Elixir"} ]

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_response({:ok, %HTTPoison.Response{status_code: 200, body: body}}) do
    # TODO use exjsx
    { :ok, :jsx.decode(body) }
  end

  def handle_response({_, %HTTPoison.Response{status_code: _, body: body}}) do
    { :error, :jsx.decode(body) }
  end
end
