defmodule PhoenixJobsThree.Repo do
    use Ecto.Repo, adapter: Ecto.Adapters.Postgres

    def conf do
      parse_url "ecto://riza:220281@localhost/phoenix_jobs_three"
    end

    def priv do
      app_dir(:phoenix_jobs_three, "priv/repo")
    end
end
