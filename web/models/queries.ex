defmodule PhoenixJobsThree.Queries do
  import Ecto.Query

  def jobs_query do
    query = from job in PhoenixJobsThree.Jobs,
            select: job
    PhoenixJobsThree.Repo.all(query)
  end

  def job_detail_query(id) do
    int_id = String.to_integer(id)
    query = from job in PhoenixJobsThree.Jobs,
            where: job.id == ^int_id,
            select: job
    PhoenixJobsThree.Repo.all(query) |> List.first
  end
end
