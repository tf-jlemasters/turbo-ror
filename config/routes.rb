Rails.application.routes.draw do
  root "messages#index"
  # Cahnges edit_message_path from a GET to a POST request, since turbo cannot interact with GET requests
  resources :messages do
    member do
      post :edit
    end
  end
end
