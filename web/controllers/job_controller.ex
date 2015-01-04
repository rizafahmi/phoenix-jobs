defmodule PhoenixJobsThree.JobController do
  use Phoenix.Controller
  alias PhoenixJobsThree.Router
  alias PhoenixJobsThree.Jobs
  alias PhoenixJobsThree.Repo
  alias PhoenixJobsThree.Queries

  def index(conn, _params) do
    jobs = Queries.jobs_query
    render conn, "index", jobs: jobs
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, params) do
    job = %Jobs{title: params["title"], description: params["description"], job_type: params["type"], job_status: params["status"]}
    Repo.insert(job)
    redirect conn, Router.pages_path(:index)
  end

  def show(conn, params) do
    job = Queries.job_detail_query(params["id"])
    render conn, "job", [job: job, action: params["action"]]
  end

  def edit(conn, %{"id" => id}) do
    job = Queries.job_detail_query(id)
    render conn, "edit", job: job
  end

  def update(conn, params) do
    IO.inspect params["type"]
    job = Repo.get(PhoenixJobsThree.Jobs, String.to_integer(params["id"]))
    job = %{job | title: params["title"], description: params["description"],
      job_type: params["type"], job_status: params["status"]}
    Repo.update(job)
    redirect conn, Router.pages_path(:index)
  end

  def destroy(conn, params) do
    job = Queries.job_detail_query(params["id"])
    Repo.delete(job)

    redirect conn, Router.pages_path(:index)
  end
end
