defmodule PhoenixJobsThree.Queries do
  import Ecto.Query

  def jobs_query do
    query = from job in PhoenixJobsThree.Jobs,
            select: job
    PhoenixJobsThree.Repo.all(query)
  end
end
