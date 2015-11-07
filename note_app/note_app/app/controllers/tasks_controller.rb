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

	def edit
		@project = Project.find(params[:project_id])
		@task = Task.find(params[:id])
	end


	def update

		@task = Task.find(params[:id])
    @task.update_attributes(task_params)
    redirect_to project_path(@task.project_id)

	end


	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to project_path(@task.project_id)
	end
	


	def complete
		task = Task.find(params[:id])


    task.update_attribute(:status, true)
    

    redirect_to project_path(task.project_id)

	end

	def reverse_status
		task = Task.find(params[:id])

    task.update_attribute(:status, false)

    redirect_to project_path(task.project_id)

	end



	private

	def task_params
    params.require(:task).permit(:name, :description, :status)
  end

end
