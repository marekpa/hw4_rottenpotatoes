class Movie < ActiveRecord::Base

  def find_movies
#    if @movie == nil then return nil end
    if  self.director == "" || self.director == nil 
         return nil
    else
       @movies = Movie.where(:director => self.director)
    end        
  end

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
end
