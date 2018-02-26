require 'rails_helper'

feature 'Media page' do
  scenario 'Should require login' do
    visit recent_media_path
    expect(page).to have_content I18n.t('flashes.log_in_first')
    expect(page.current_path).to eq root_path
  end

  context 'logged in' do
    
    background do
      # session[:access_token] = "dummy_access_token" # to skip login requirement
      page.set_rack_session(access_token: "dummy_access_token") # to skip login requirement
    end

    scenario 'Should display user media' do
      require 'stubs/media_stubs/main_stub.rb'
      visit recent_media_path
      instagram_images = page.all(:xpath, "//img[@class='insta_img']")
      expect(instagram_images.length).to eq 2
      expect(instagram_images.first[:src].include?("instagram-screenshot")).to be true
      expect(instagram_images.last[:src].include?("showoff_logo")).to be true
    end

    scenario 'Should display No Media message if no media found' do
      require 'stubs/media_stubs/no_media_stub.rb'
      visit recent_media_path
      expect(page).to have_content I18n.t('flashes.no_media_found')
    end

    scenario 'Should handle errors' do
      require 'stubs/media_stubs/error_stub.rb'
      visit auth_instagram_callback_path(code: '1234')
      expect(page).to have_content I18n.t('flashes.error')
    end

    scenario 'Should have header with Show off logo / home page url, and Application Name' do
      header_test(recent_media_path)
    end
  end
end