defmodule Pinchflat.Repo.Migrations.AddDownloadCommentsToMediaProfiles do
  use Ecto.Migration

  def change do
    alter table(:media_profiles) do
      add :download_comments, :boolean, default: false, null: false
    end

    alter table(:media_items) do
      add :comments_filepath, :string
    end
  end
end
