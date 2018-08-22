require 'sinatra'
require 'sinatra/contrib'
# changes the file without restarting the whole server
require 'sinatra/reloader' if development?

# creates our first route
# get is request word it creates our first route and is the index that will display the main

# this is a get path that will display a list of all the different movies.
get "/movies" do
  movies = ["Ant-Man and Wasp ","Incredibles 2 ", "The spy who dumped me ", "Mamma Mia! Here we go ", "The meg"]
end
# this will return the newly created forms for creating a new movie.
get "/movies/new" do
  "creating new forms"
end
# once the new movie as been created it will be posted back into the movies and can been seen there.
post "/movies" do
  "Adding a new movies"
end
# this will return a html form that will show editing a movie.
get "/movies/id/edit" do
  "editing a movies"
end
# the delete verb will delete a specific movie. you can give it an id so it knows which photo it has to delete.
delete "/movies/delete" do
  "deleting a new movies"
end
# the put verb will allow the user to update a specific a movies.
put "/movies/id" do
  "update a specific movies"
end
# this will display a specific movies by calling a specific id number.
get "/movies/:id" do
  # use the params object
  id = params[:id]
  "display a specific movies #{id}"
end
