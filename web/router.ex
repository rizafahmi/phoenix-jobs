defmodule PhoenixJobsThree.Router do
  use Phoenix.Router

  get "/", PhoenixJobsThree.PageController, :index, as: :index
  get "/new", PhoenixJobsThree.PageController, :new, as: :new
  post "/new", PhoenixJobsThree.PageController, :save, as: :save
  get "/job/:id", PhoenixJobsThree.PageController, :job, as: :job
  get "/job/:id/edit", PhoenixJobsThree.PageController, :edit, as: :edit
  post "/job/:id", PhoenixJobsThree.PageController, :update, as: :update
  get "/job/:id/:action", PhoenixJobsThree.PageController, :job, as: :delete
  post "/", PhoenixJobsThree.PageController,:destroy, as: :destroy

end
