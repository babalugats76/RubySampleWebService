json.todos @todos do |todo|
   json.id todo.id
   json.title todo.title
   json.completed todo.completed
end