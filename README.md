# Photoshare-backend
 
**Photoshare-backend (Similar to Instagram Clone Server side) using Phoenix Framework( in Elixir using Erlang VM, OTP), PostgreSQL, Apollo graphql**

**#Steps: Installation**
1. git clone https://github.com/manojkmishra/Photoshare-backend.git
2. Install dependencies with `mix deps.get`
3. Start PostgreSQL server
4. create database with name instagram_dev or `mix ecto.create`
![enter image description here](https://github.com/manojkmishra/Photoshare-backend/blob/master/screenshots/createdatabase.PNG)
5. migrate your database with `mix ecto.migrate`
5. run faker `mix ecto.reset`
output will be similar to 
The database for Instagram.Repo has been dropped
The database for Instagram.Repo has been created
[info] == Running Instagram.Repo.Migrations.CreatePhotos.change/0 forward
[info] create table photos
[info] == Migrated in 0.0s
[info] == Running Instagram.Repo.Migrations.CreateUsers.change/0 forward
[info] create table users
[info] create index users_email_index
[info] create index users_facebook_id_index
[info] == Migrated in 0.2s
[debug] QUERY OK db=16.0ms
INSERT INTO "photos" ("caption","image_url","inserted_at","updated_at") VALUES ($1,$2,$3,$4) RETURNING "id" ["Though this be madness, yet there is method in 't.", "https://freestocks.org/fs/wp-content/uploads/2018/01/english_bulldog_lying_on_a_sofa_2-800x533.jpg", {{2018, 6, 12}, {5, 35, 15, 902000}}, {{2018, 6, 12}, {5, 35, 15, 902000}}]
[debug] QUERY OK db=32.0ms
INSERT INTO "photos" ("caption","image_url","inserted_at","updated_at") VALUES ($1,$2,$3,$4) RETURNING "id" ["Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love.", "https://freestocks.org/fs/wp-content/uploads/2017/04/old_tile_stove_fire-800x533.jpg", {{2018, 6, 12}, {5, 35, 16, 208000}}, {{2018, 6, 12}, {5, 35, 16, 208000}}]
[debug] QUERY OK db=31.0ms
![enter image description here](https://github.com/manojkmishra/Photoshare-backend/blob/master/screenshots/databsefake.PNG)
6. For compiling use `mix compile`, Start Phoenix endpoint with `mix phx.server`, 
Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
7. Download and install GraphiQL from https://github.com/skevy/graphiql-app/releases
now database can be accessed via query as shown in picture
![enter image description here](https://github.com/manojkmishra/Photoshare-backend/blob/master/screenshots/graphqlaccess.PNG)


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


