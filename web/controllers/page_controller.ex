defmodule PhoenixJobsThree.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    jobs = PhoenixJobsThree.Queries.jobs_query
    render conn, "index", jobs: jobs
  end

  def create(conn, params) do
    IO.inspect params
    jobs = PhoenixJobsThree.Queries.jobs_query
    render conn, "index", jobs: jobs
  end
end
