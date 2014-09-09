defmodule PhoenixJobsThree.Queries do
  import Ecto.Query
  alias PhoenixJobsThree.Jobs
  alias PhoenixJobsThree.Repo

  def jobs_query do
    query = from job in Jobs,
            order_by: [desc: job.id],
            select: job
    Repo.all(query)
  end

  def job_detail_query(id) do
    int_id = String.to_integer(id)
    query = from job in Jobs,
            where: job.id == ^int_id,
            select: job
    Repo.all(query) |> List.first
  end
end
