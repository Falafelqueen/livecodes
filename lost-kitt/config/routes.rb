Rails.application.routes.draw do
  get "pets", to: "pets#index"
  get "pets/new", to: "pets#new", as: "new_pet"

  get "pets/:id", to: "pets#show", as: "pet"

  # Create
  post "pets", to: "pets#create"


  # Update
  get "pets/:id/edit", to: "pets#edit", as: "edit_pet"
  patch "pets/:id", to: "pets#update"

  # Delete
  delete "pets/:id", to: "pets#destroy"
end
