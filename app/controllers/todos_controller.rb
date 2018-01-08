class TodosController < ApplicationController

	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
		render :new
	end

	def create
		@todo = Todo.new(todo_params)
		
		if @todo.save
			redirect_to pages_todos_path
		else
			render :new
		end
	end

	def show
		@todo = Todo.find(params[:id])
	end	

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update(todo_params)
      redirect_to pages_todos_path
    else
      render :edit
    end
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
    redirect_to pages_todos_path
	end

	def complete
		@todo = Todo.find(params[:id])
		@todo.completed = true
		@todo.save
		redirect_to pages_todos_path
	end

	def list
		@todos = Todo.all
	end

	private
	def todo_params
		params.require(:todo).permit(:description, :completed, :id)
	end

end
