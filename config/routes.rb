Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  resources :courses, except: [:new]
  get 'about', to: 'pages#about'
  resources :students, except: [:destroy]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'enroll_course', to: 'student_courses#create'
end
