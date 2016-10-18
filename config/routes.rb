Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
	root 'home#index'
  get 'home/index'

  get 'posts/new'
  post 'posts/create'

  get 'posts/:id/edit' => 'posts#edit'

  get 'posts/delete'

  get 'posts/:id', to: 'posts#show' 

end
