defmodule {{cookiecutter.project_module}}.Web.HTML.PageController do
  use {{cookiecutter.project_module}}.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
