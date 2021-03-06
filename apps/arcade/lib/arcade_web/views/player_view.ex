defmodule ArcadeWeb.PlayerView do
  use ArcadeWeb, :view
  alias ArcadeWeb.PlayerView

  def render("index.json", %{players: players}) do
    render_many(players, PlayerView, "player.json")
  end

  def render("show.json", %{player: player}) do
    render_one(player, PlayerView, "player.json")
  end

  def render("player.json", %{player: player}) do
    %{id: player.id}
  end
end
