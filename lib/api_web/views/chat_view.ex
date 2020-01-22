defmodule ApiWeb.ChatView do
  use ApiWeb, :view
  alias ApiWeb.ChatView


  def render("show.json", %{text: text}) do
    %{data: render_one(text, ChatView, "chat.json")}
  end

  def render("chat.json", %{text: text}) do
    %{text: text.text}
  end

  def render("error.json", _) do
    %{text: "error"}
  end
end
