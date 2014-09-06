defmodule PhoenixJobsThree.Router do
  use Phoenix.Router

  scope alias: PhoenixJobsThree do
    get "/", PageController, :index, as: :pages
    resources "jobs", JobController
  end
end
