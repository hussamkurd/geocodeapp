Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/check_longlat_within_country' => 'geocoder#check_longlat_within_country'

end
