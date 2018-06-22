defmodule Instagram.Repo.Migrations.CreateLikePhotos do
  use Ecto.Migration

  def change do
    create table(:like_photos) do
      add :user_id, references(:users, on_delete: :nothing)
      add :photo_id, references(:photos, on_delete: :nothing)

      timestamps()
    end

    create index(:like_photos, [:user_id])
    create index(:like_photos, [:photo_id])
  end
end
