defmodule PhoenixJobsThree.PageController do
  use Phoenix.Controller
  alias PhoenixJobsThree.Router

  def index(conn, _params) do
    jobs = PhoenixJobsThree.Queries.jobs_query
    render conn, "index", jobs: jobs
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def save(conn, params) do
    job = %PhoenixJobsThree.Jobs{title: params["title"], description: params["description"], job_type: params["type"], job_status: params["status"]}
    PhoenixJobsThree.Repo.insert(job)
    redirect conn, Router.index_path(:index)
  end

  def job(conn, %{"id" => id}) do
    job = PhoenixJobsThree.Queries.job_detail_query(id)
    IO.inspect job
    render conn, "job", job: job
  end
end
