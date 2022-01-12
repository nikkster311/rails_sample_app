Rails.application.routes.draw do
  # maps requests for url to home action in static pages controller
  get 'static_pages/home'
  get 'static_pages/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#hello"
end
