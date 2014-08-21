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
    render conn, "job", job: job
  end

  def edit(conn, %{"id" => id}) do
    job = PhoenixJobsThree.Queries.job_detail_query(id)
    render conn, "edit", job: job
  end

  def update(conn, params) do
    IO.inspect params["type"]
    job = PhoenixJobsThree.Repo.get(PhoenixJobsThree.Jobs, params["id"])
    job = %{job | title: params["title"], description: params["description"],
      job_type: params["type"], job_status: params["status"]}
    PhoenixJobsThree.Repo.update(job)
    redirect conn, Router.index_path(:index)
  end
end
