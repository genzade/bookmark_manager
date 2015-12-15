feature 'show a list of links' do
  scenario 'shows a list of links in homepage' do
    Link.create(title: 'Blog of Giamir', link: 'http://giamir.com')
    expect(page).to have_content ('Blog of Giamir')
  end
end
