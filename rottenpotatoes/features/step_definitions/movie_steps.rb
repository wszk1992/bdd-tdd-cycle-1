Given(/^the following movies exist:$/) do |movies_table|
  # table is a Cucumber::Ast::Table
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    
    #debugger
    Movie.create(title: movie[:title], rating: movie[:rating], director: movie[:director], release_date: movie[:release_date])
  end
  #flunk "Unimplemented"
  #pending # express the regexp above with the code you wish you had
end

# When steps here


Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
  #debugger
  if page.body.respond_to? :should
    page.body.should have_xpath("//h2", :text => "Details about #{arg1}") 
    page.body.should have_xpath("//li", :text => "#{arg2}") 
  else
    assert page.body.has_xpath?("//h2", :text => "Details about #{arg1}") 
    assert page.body.has_xpath?("//li", :text => "#{arg2}")
  end
end