class InstagramController < ApplicationController
  before_action :require_login, only: :recent_media
  
  def callback
    begin
      instagram_api = InstagramServices::InstagramApiService.instagram_api_service(code: params[:code])
      session[:access_token] = instagram_api.access_token
      redirect_to root_url, alert: I18n.t('flashes.error') if session[:access_token].nil?
      redirect_to action: "recent_media"
    rescue StandardError => error
      redirect_to root_url, alert: I18n.t('flashes.error')
    end
  end

  def recent_media
    instagram_api = InstagramServices::InstagramApiService.instagram_api_service(access_token: session[:access_token])
    @recent_media = instagram_api.recent_media
    flash[:warning] = I18n.t('flashes.no_media_found') if @recent_media.empty?
  end

  def require_login
    unless session[:access_token]
      redirect_to root_url, alert: I18n.t('flashes.log_in_first')
    end
  end
end
