defmodule CookiecutterScreamingPhoenix.Web.HealthController do
  use CookiecutterScreamingPhoenix.Web, :controller

  # TODO: actually check various repos, etc.
  def index(conn, _params) do
    text(conn, "OK")
  end

  def nodes(conn, _params) do
    self = Node.self
    nodes = Node.list

    text(conn, [
      "Self: #{inspect(self)}",
      "Nodes: #{inspect(nodes)}",
    ] |> Enum.join("\n"))
  end
end
