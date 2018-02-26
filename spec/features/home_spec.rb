require 'rails_helper'

feature 'Home page' do
  scenario 'Should have sign in link to Instagram' do
    visit root_path
    expect(page).to have_content I18n.t('login_instagram')
    instagram_link = page.find('//a[@id="instagram_link"]')
    href_link = instagram_link[:href]
    expect(href_link.include?('api.instagram.com/oauth/authorize')).to be true
  end

  scenario 'Should have header with Show off logo / home page url, and Application Name' do
    header_test(root_path)
  end
end