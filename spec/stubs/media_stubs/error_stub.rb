class InstagramServices::InstagramApiService
  def initialize(params)
  end

  def self.instagram_api_service(params)
    @@instagram_api = InstagramServices::InstagramApiService.new(params)
  end
end