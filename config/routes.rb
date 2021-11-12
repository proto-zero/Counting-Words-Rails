Rails.application.routes.draw do
  root "twizzler#home"
  
  get "welcome", to: "twizzler#candyshop"
  post "letsroll", to: "twizzler#rolldice"
  get "form", to: "twizzler#showform"
  get "route3", to: "twizzler#pokefolkform"
  post "profoak", to: "twizzler#pokedatabase"
  get "pokedesk", to: "twizzler#pokedesk"
  get "home", to: "twizzler#home"
  get "entry", to: "twizzler#entry"
  post "count", to: "twizzler#count"
  get "home/:id", to: "twizzler#show" 
end
