Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'somar' => 'calc#somar'
  #get 'fatorial' => 'calc#fatorial'
  post 'somar' => 'calc#somar'
  post 'subtrair' => 'calc#subtrair'
  post 'fatorial' => 'calc#fatorial'
  #match 'somar',  :to => 'calc#somar', :via => 'get'
  #match 'fatorial',  :to => 'calc#fatorial', :via => 'get'
  #match 'somar',  :to => 'calc#somar', :via => 'post'
  #match 'fatorial',  :to => 'calc#fatorial', :via => 'post'
end
