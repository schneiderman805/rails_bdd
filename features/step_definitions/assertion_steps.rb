Then("I should see {string}") do |content|
    expect(page).to have_content content
  end

  Then("I should be on {string} page") do |string|
    expect(current_path).to eq articles_path
  end