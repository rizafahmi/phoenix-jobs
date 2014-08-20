defmodule PhoenixJobsThree.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    jobs = PhoenixJobsThree.Queries.jobs_query
    render conn, "index", jobs: jobs
  end

  def new(conn, _params) do
    render conn, "new"
  end
  def create(conn, params) do
    IO.inspect params
    render conn, "new"
  end
end
