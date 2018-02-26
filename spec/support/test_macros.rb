module TestMacros
  def header_test(page_path)
    visit page_path
    showoff_link = page.find('//div[@id="showoff_div"]/a')
    # expect(showoff_link[:href].include?('showoff.ie')).to be true
    expect(showoff_link[:href]).to eq root_path
    showoff_img = page.find('//div[@id="showoff_div"]/a/img')
    expect(showoff_img[:src].include?('showoff_logo')).to be true
    expect(page).to have_content I18n.t('instagram_browser')
  end
end