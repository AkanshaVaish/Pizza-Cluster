Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'register' => "user#new"
  post 'register' => "user#create"
  get 'login' => "session#new"
  post 'login' => "session#startsession"
  get 'logout' => "session#endsession"
  get 'menu' => "menu#show"
  get 'restaurants' =>"main#list"
  get 'order' => "menu#order"

  #static pages:
  get 'about' => "main#staticAbout"
  get 'contact' => "main#staticContact"
  root  :controller => 'main', :action => 'show'

end
