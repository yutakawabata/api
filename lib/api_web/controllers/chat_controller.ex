defmodule ApiWeb.ChatController do
  alias Api.Chats
  use ApiWeb, :controller
  require Logger

  def show do

  end

  def recv(conn, text) do
    Logger.info(text)
    case Chats.recv_text(text.text) do
      {:ok, _} ->
        conn
        |> put_status(:received)
        |> render("chat.json", %{text: text.text})
      {:error, _} ->
        render(conn, "error.json", %{text: text.text})
    end
  end
end