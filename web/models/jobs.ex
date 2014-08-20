defmodule PhoenixJobsThree.Jobs do
    use Ecto.Model

    schema "jobs" do
      field :title, :string
        field :job_type, :string
        field :description, :string
        field :job_status, :string
    end
end
