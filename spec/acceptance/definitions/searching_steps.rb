step "there are companies in CharityNavigator.com" do
  FakeWeb.register_uri(:get, 
                       "http://www.charitynavigator.org/feeds/search7/?appid=100524666074&keyword=cancer",
                       body: fixture_file("cancer_results.xml"))
  FakeWeb.register_uri(:get, 
                       "http://www.charitynavigator.org/feeds/search7/?appid=100524666074&keyword=toys",
                       body: fixture_file("toys_results.xml"))
end

step "I search for :term" do |term|
  visit "/"
  fill_in "Search", with: term
  click_on "Submit"
end

step 'it should return :text' do |text|
  page.should have_content(text)
end

step 'it should not return :text' do |text|
  page.should_not have_content(text)
end
