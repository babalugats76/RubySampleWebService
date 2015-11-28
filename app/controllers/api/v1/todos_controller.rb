class Api::V1::TodosController < ActionController::API
  #include ActionController::Serialization
  before_action :set_todo, only: [:show]

  # GET /todos
  # GET /todos.json
  def index
  
    # Get all the todos
    @todos = Todo.all
    
    # Search
    @todos = @todos.search(params[:q]) if params[:q]
    render status: :ok
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
    render status: :ok
  end

  # POST /todos
  # POST /todos.json
  def create
    
    #logger.info(params.inspect)
    #logger.info("before creation of new")
    @todo = Todo.new(todo_params)
    #logger.info("after creation on new")
    
    if @todo.save
      render status: :created
    else
      #logger.info("inside else statement!")
      render @todo.errors, status: :unprocessable_entity
    end
    
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  
  def set_todo
    @todo = Todo.find(params[:id])
  end
  
  def todo_params
     params.require(:todo).permit(:title,:completed)
  end

end
