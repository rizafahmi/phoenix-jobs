defmodule PhoenixJobsThree.Router do
  use Phoenix.Router

  get "/", PhoenixJobsThree.PageController, :index, as: :index
  get "/new", PhoenixJobsThree.PageController, :new, as: :new
  post "/new", PhoenixJobsThree.PageController, :save, as: :save
  get "/edit/:id", PhoenixJobsThree.PageController, :edit, as: :edit

end
