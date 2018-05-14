defmodule InstagramWeb.Schema do
  use Absinthe.Schema

  alias InstagramWeb.Resolvers
  import_types __MODULE__.PostsTypes

  query do
    @desc "Get list of photo"
    field :photos, list_of(:photo) do
      resolve &Resolvers.Posts.photos/3
     end
  end

end
