defmodule InstagramWeb.Schema.PostsTypes do
  use Absinthe.Schema.Notation

  object :photo do
    field :id, non_null(:id)
    field :image_url, non_null(:string)
    field :caption, :string
    field :viewer_like, non_null(:boolean) 

    end
end
