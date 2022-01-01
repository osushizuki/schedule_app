Rails.application.routes.draw do
  root to: "schedules#index"
  resources :schedules

  delete 'schedules/:id' => 'schedules#destroy'
end
