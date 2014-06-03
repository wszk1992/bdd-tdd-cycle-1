#- spec/controllers/movies_controller_spec.rb
require 'spec_helper'

describe MoviesController do
  render_views
  
  before :each do
=begin
    movies = {:title => 'Star Wars', :rating => 'PG', :director => 'George Lucas', :release_date => '1977-05-25'},
	        {:title => 'Blade Runner', :rating => 'R', :director => 'Ridley Scott', :release_date => '1982-06-25'},
	        {:title => 'Alien', :rating => 'R', :director => '', :release_date => '1979-05-25'},
      	  {:title => 'THX-1138', :rating => 'R', :director => 'George Lucas', :release_date => '1971-03-11'},
  	 }
=end
  	@movies = Movie.create :title => 'Star Wars', :rating => 'PG', :director => 'George Lucas', :release_date => '1977-05-25'
  end
  
  describe "GET #find" do
    subject { get :find, id: @movies }
    
    it "renders the find template" do
      expect(subject).to render_template(:find)
      expect(subject).to render_template("find")
    end
    
    it "populates an array of movies" do
      get :find, id: @movies
      #debugger
      response.should contain "All Movies With The Same Director"
    end
    
    
  end
end