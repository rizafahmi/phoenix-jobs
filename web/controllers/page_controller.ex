defmodule PhoenixJobsThree.PageController do
  use Phoenix.Controller
  alias PhoenixJobsThree.Router
  alias PhoenixJobsThree.Queries

  def index(conn, _params) do
    jobs = Queries.jobs_query
    render conn, "index", jobs: jobs
  end

end
