defmodule PhoenixJobsThree.Router do
  use Phoenix.Router

  get "/", PhoenixJobsThree.PageController, :index, as: :pages
  get "/new", PhoenixJobsThree.PageController, :new, as: :new
  post "/new", PhoenixJobsThree.PageController, :create, as: :create

end
