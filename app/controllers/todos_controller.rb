class TodosController < ApplicationController
    # Simple authentication, handled in appliation_controller.rb
  before_filter :authenticate

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
