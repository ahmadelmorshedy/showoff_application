class InstagramServices::InstagramApiService
  def initialize(params)
    if params[:code]
      @response = Instagram.get_access_token(params[:code], :redirect_uri => ENV['CALLBACK_URL'])
      @client = Instagram.client(:access_token => @response.access_token)
    elsif params[:access_token]
      @client = Instagram.client(:access_token => params[:access_token])
    end
  end

  def self.instagram_api_service(params)
    @@instagram_api ||= InstagramServices::InstagramApiService.new(params)
  end

  def access_token
    @response.access_token
  end

  def user_name
    @response.user.full_name
  end

  def recent_media
    user_media = @client.user_recent_media
    # user_media = @client.user.media_feed(0)
  end
end