Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
	root 'home#index'
  resources :posts

  controller :users do
    get 'user/login' => :login, as: 'login'
    get 'user/edit' => :edit, as: 'edit'
    get 'user/signup' => :new, as:'new'
    post 'user/signup' => :create, as:'signup'
  end

end
