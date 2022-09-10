Rails.application.routes.draw do
  namespace :api do
    resources :courses do
      resources :lessons do
        resources :lesson_questions
      end
    end
  end
end
