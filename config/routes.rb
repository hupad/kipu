Rails.application.routes.draw do
 get 'index', to: "numbers#index"
 post 'humanize', to: "numbers#humanize"
end
