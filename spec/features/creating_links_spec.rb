# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to my bookmark manager
feature 'Creating new links' do
  scenario 'I can see the links that I added in the links page' do
    visit '/links/new'
    fill_in('title', with: "Giamir's blog")
    fill_in('url', with: 'http://www.giamir.com')
    click_button('Add Link')
    within 'ul#links' do
      expect(page).to have_content("Giamir's blog")
    end
  end
end
