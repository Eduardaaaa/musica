Rails.application.routes.draw do
  resources :alunosprofs
  resources :professors
  resources :instrumentos
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
