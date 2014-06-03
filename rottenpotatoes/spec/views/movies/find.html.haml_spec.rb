#- spec/movies/find.html.haml_spec.rb
require 'spec_helper'

describe "movies/find" do
  
 before :each do
   movies = [{:title => 'Star Wars', :rating => 'PG', :director => 'George Lucas', :release_date => '1977-05-25'},
	        {:title => 'Blade Runner', :rating => 'R', :director => 'Ridley Scott', :release_date => '1982-06-25'},
	        {:title => 'Alien', :rating => 'R', :director => '', :release_date => '1979-05-25'},
      	  {:title => 'THX-1138', :rating => 'R', :director => 'George Lucas', :release_date => '1971-03-11'},
  	 ]
  	@movies = Movie.create(movies)
  end
 
  describe "render #find.html.haml" do
    it "renders the find template" do
      assign :movies,  @movies
      render
  
      expect(view).to render_template(:find)
      expect(view).to render_template("find")
      #expect(view).to render_template("movies/find/1")
    end
  end

end