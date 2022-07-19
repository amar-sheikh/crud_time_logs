Rails.application.routes.draw do
  root 'time_logs#index'
  get '/time_logs', to: 'time_logs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
