class TodosController < ApplicationController
    # Simple authentication, handled in appliation_controller.rb
  before_filter :authenticate

  def index
      # Refactor to create a user object and use that instead
    @todos = current_user.todos
    #@todos = Todo.where(email: current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
      # Refactor to create a user object and use that instead
    current_user.todos.create(todo_params)
    #Todo.create(todo_params.merge(email: current_email))
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
