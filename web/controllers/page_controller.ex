defmodule PhoenixJobsThree.PageController do
  use Phoenix.Controller
  alias PhoenixJobsThree.Router

  def index(conn, _params) do
    jobs = PhoenixJobsThree.Queries.jobs_query
    render conn, "index", jobs: jobs
  end

end
