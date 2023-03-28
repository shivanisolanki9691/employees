class StudentsController < ApplicationController
	before_action :set_params, only:[:edit, :show, :update, :destroy]

	def index
		@students = Student.all 
	end

	def new 
		@student = Student.new
	end
	def create
		@student = Student.new(student_params)
		if @student.save
  			redirect_to students_path, notice: 'Successfully created  student list'
  		else
  			render :new
  		end
  	end

  	def edit
  		
  		
  	end

  	def update
  		
  		if @student.update(student_params)
  			redirect_to students_path, notice: 'Successfully udated student list'
  		else
  			render :edit
  		end
  	end

  	def show
  		
  	end

  	def destroy
  		if @student.destroy
  			redirect_to students_path
  		end
  	end

  	private
  	def student_params
  		params.require(:student).permit(:first_name, :middle_name, :last_name, :personal_email, :state, :country, :pincode, :address_line_1, :address_line_2)
  	end

  	def set_params
  		@student = Student.find(params[:id])
  	rescue ActiveRecord::RecordNotFound => error
  		redirect_to students_path, notice: error

  	end
end