class TodosController < ActionController::API
  include ActionController::Serialization
  before_action :set_todo, only: [:show]

  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
    render json: @todos, status: :ok
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
    render json: @todo, status: :ok 
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_todo
    @todo = Todo.find(params[:id])
  end

end
