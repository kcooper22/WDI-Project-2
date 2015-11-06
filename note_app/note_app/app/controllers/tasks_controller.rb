class TasksController < ApplicationController

	skip_before_action :verify_authenticity_token
	
	def new

 		@task = Task.new

		@project = Project.find(params[:project_id])

	end


	def create

		@task = Task.new(task_params)
		@task.project_id = params[:project_id]

		# binding.pry 

		if @task.save
			redirect_to project_path(@task.project_id)
		else
			render :new
		end
	end



	private

	def task_params
    params.require(:task).permit(:name, :description, :status)
  end

end
