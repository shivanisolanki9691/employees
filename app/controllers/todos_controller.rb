class TodosController < ApplicationController
	def index
		@monday_todos = Todo.where(day: 'Monday')
        @tuesday_todos = Todo.where(day: 'Tuesday')
    end

    def create
    	todo = Todo.new
    	if todo.save
            SendMailer.send_email("shivakewat2099@gmail.com", todo).deliver
            redirect_to todos_path, notice: "To-Do item successfully added!"
    	else
    		render :index
    	end
    end
    private
    def todo_params
    	params.require(:todo).permit(:name, :day)
    end
end
