defmodule Api.Repo.Migrations.CreateChats do
  use Ecto.Migration

  def change do
    create table(:chats) do
      add :text, :string

      timestamps()
    end

  end
end
