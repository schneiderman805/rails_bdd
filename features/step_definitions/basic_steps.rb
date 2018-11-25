When("I visit the site") do
    visit root_path
  end

  And("show me the page") do
    save_and_open_page
 end
  

  Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
  end

  Given("I visit the {string} page") do |string|
    visit articles_path
  end
  
  
  
  When("I fill in {string} with {string}") do |form_field, content|
    fill_in form_field, with: content
  end
  
  When("I click {string}") do |value|
   click_on value
  end
  
  
  