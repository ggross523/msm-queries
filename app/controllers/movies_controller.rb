class MoviesController < ApplicationController
  def index
    render({ :template => "movies/movies"})
  end

  def show
    the_id = params.fetch("the_id")

    matching_records = Movie.where({ :id => the_id})

    @the_movie = matching_records.at(0)
    
    render({ :template => "movies/movies_id"})
  end

end
