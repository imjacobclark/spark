Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get ':tenant', to: 'tenants#home'
  get  '/:path', to: 'tenants#page', :constraints => { :path => /.*/ }
end
