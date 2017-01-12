Rails.application.routes.draw do
    resources :categories
    resources :soups

    root to: "categories#index"

    get "/allcategories", to: redirect("/")

    get "/soups/:id/toggle_featured", to: "soups#toggle_featured", as: :toggle_featured
end
