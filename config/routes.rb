Rails.application.routes.draw do
	root "welcome#index"
	get 'index', to: "numbers#index"
	post 'humanize', to: "numbers#humanize"
end
