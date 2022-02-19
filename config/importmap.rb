# Pin npm packages by running ./bin/importmap
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "tom-select", to: "https://ga.jspm.io/npm:tom-select@2.0.0/dist/js/tom-select.complete.js"
pin_all_from "app/javascript/controllers", under: "controllers"
