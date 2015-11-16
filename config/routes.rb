Rails.application.routes.draw  do
    namespace :api, :defaults => {:format => 'json'} do
        namespace :v1 do    
            get  "/todos/",    to: "todos#index"
            get  "/todos/:id", to: "todos#show"
            post "/todos/",    to: "todos#create"
        end 
    end
end
