Rails.application.routes.draw do

	devise_for :teachers, controllers: {
	  sessions: 'teachers/sessions',
	  registrations: 'teachers/registrations'
	}

	devise_for :pupils, controllers: {
	  sessions: 'pupils/sessions'
	}
	get 'home/index'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "home#index"
end
