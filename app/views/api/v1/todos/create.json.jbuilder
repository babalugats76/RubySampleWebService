if !@todo.errors.nil?
    json.id @todo.id
    json.title @todo.title
    json.completed @todo.completed
else
   json.errors
end