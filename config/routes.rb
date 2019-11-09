Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #post 'somar' => 'calc#somar'
  #post 'fatorial' => 'calc#fatorial'
  match 'somar',  :to => 'calc#somar', :via => 'post'
  match 'fatorial',  :to => 'calc#fatorial', :via => 'post'
end
