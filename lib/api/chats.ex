defmodule Api.Chats do
  import Ecto.Query
  alias Api.Chat
  alias Api.Repo

  def list_students()do
    Repo.all(Student)
  end

  def recv_text(attrs \\ %{}) do
    %Chat{}
    |> Chat.changeset(attrs)
    |> Repo.insert()
  end

end