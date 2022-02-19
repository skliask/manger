// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"



new TomSelect("#recipe_ingredients",{
  persist: false,
  createOnBlur: true,
  create: true
});

