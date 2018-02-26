class InstagramServices::InstagramApiService
  def initialize(params)
  end

  def self.instagram_api_service(params)
    @@instagram_api = InstagramServices::InstagramApiService.new(params)
  end

  def recent_media
    user_media = []
    img1 = OpenStruct.new
    img1.images = OpenStruct.new
    img1.images.thumbnail = OpenStruct.new
    # img1.images.thumbnail.url = asset_path('instagram-screenshot.png')
    img1.images.thumbnail.url = ActionController::Base.helpers.asset_path('instagram-screenshot.png')
    user_media << img1

    img2 = OpenStruct.new
    img2.images = OpenStruct.new
    img2.images.thumbnail = OpenStruct.new
    img2.images.thumbnail.url = ActionController::Base.helpers.asset_path('showoff_logo.png')
    user_media << img2
  end
end