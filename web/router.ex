defmodule PhoenixJobsThree.Router do
  use Phoenix.Router

  get "/", PhoenixJobsThree.PageController, :index, as: :pages

end
