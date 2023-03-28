class SubjectsController <ApplicationController
    before_action :set_params, only:[:edit, :show, :update, :destroy]

	def index
		@subjects = Subject.all 
	end

	def new 
		@subject = Subject.new
	end
	def create
		@subject = Subject.new(subject_params)
		if @subject.save
  			redirect_to subjects_path, notice: 'Successfully created  student list'
  		else
  			render :new
  		end
  	end

  	def edit
  		
  		
  	end

  	def update
  		
  		if @subject.update(subject_params)
  			redirect_to subjects_path, notice: 'Successfully udated subject list'
  		else
  			render :edit
  		end
  	end

  	def show
  		
  	end

  	def destroy
  		if @subject.destroy
  			redirect_to subjects_path
  		end
  	end

  	private
  	def subject_params
  		params.require(:subject).permit(:name, :sub_type, :student_id, :image)
  	end

  	def set_params
  		@subject = Subject.find(params[:id])
  	rescue ActiveRecord::RecordNotFound => error
  		redirect_to subjects_path, notice: error
  	end
end