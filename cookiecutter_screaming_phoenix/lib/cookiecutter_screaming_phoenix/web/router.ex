defmodule CookiecutterScreamingPhoenix.Web.Router do
  use CookiecutterScreamingPhoenix.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CookiecutterScreamingPhoenix.Web do
    pipe_through :browser # Use the default browser stack

    get "/", HTML.PageController, :index

    get "/health", HealthController, :index
    if Application.get_env(:cookiecutter_screaming_phoenix, :include_debug_routes) do
      get "/nodes", HealthController, :nodes
    end    
  end

  # Other scopes may use custom stacks.
  # scope "/api", CookiecutterScreamingPhoenix.Web.API do
  #   pipe_through :api
  # end
end
