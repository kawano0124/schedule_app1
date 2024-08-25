Rails.application.routes.draw do
  get 'schedules/index'
  get 'schedule/kanri', to: 'schedule#kanri'
  get 'schedule/call', to: 'schedule#call'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :schedules

end
