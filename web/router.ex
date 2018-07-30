defmodule Voice.Router do
  use Voice.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Voice do
    pipe_through :api
  end
end
