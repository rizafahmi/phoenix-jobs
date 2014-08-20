defmodule PhoenixJobsThree do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    tree = [worker(PhoenixJobsThree.Repo, [])]
    opts = [name: PhoenixJobsThree.Sup, strategy: :one_for_one]

    children = [
      # Define workers and child supervisors to be supervised
      # worker(TestApp.Worker, [arg1, arg2, arg3])]
    ]

    opts = [strategy: :one_for_one, name: PhoenixJobsThree.Supervisor]
    Supervisor.start_link(tree, opts)
  end
end
