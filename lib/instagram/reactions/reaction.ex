defmodule Instagram.Reactions do
#moduledoc """ The Reaction context."""
  import Ecto.Query, warn: false
  alias Instagram.Repo
  alias Instagram.Reactions.LikePhoto
#-----like_photo----start
  def like_photo(photo_id, user_id) do
   query = from p in LikePhoto,
          where: p.photo_id == ^photo_id and p.user_id == ^user_id
    result = Repo.one(query)
    if result == nil do
      create_like_photo(%{photo_id: photo_id, user_id: user_id})
      {:ok, true}
    else
      delete_like_photo(result)
      {:ok, false}
    end
  end

  def create_like_photo(attrs \\ %{}) do
    %LikePhoto{}
    |> LikePhoto.changeset(attrs)
    |> Repo.insert()
  end

  def delete_like_photo(%LikePhoto{} = like_photo) do
    Repo.delete(like_photo)
  end
#like photo----end---------------

end
