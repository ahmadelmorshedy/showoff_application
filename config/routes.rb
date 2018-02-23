Rails.application.routes.draw do
  get 'pages/home_page'
  root :to => "pages#home_page"

  get '/auth/instagram/callback', to: 'instagram#callback'

  get '/recent_media', to: 'instagram#recent_media'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
