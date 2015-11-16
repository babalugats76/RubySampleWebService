Rails.application.routes.draw  do
    get "/todos", to: "todos#index", :defaults => {:format => 'json'}
    get "/todos/:id", to: "todos#show", :defaults => {:format => 'json'}
end
