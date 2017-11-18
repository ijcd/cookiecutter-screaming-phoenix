defmodule {{cookiecutter.project_module}}.Web.HTML.PageControllerTest do
  use {{cookiecutter.project_module}}.Web.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
