Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
	root 'home#index'
  resources :posts

end
