class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    @todos = Todo.all
    render :index
  end

  private
  def todo_params
    params.require(:todo).permit(:description)
  end
end
