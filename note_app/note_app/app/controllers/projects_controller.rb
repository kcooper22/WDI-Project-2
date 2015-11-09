class ProjectsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
		@user =  current_user

	end

	def show

		@project = Project.find(params[:id])

	end


	def new
 		@project = Project.new
	end

	def create
    @project = Project.create(project_params)
    # binding.pry
    @project.users << current_user
    redirect_to '/'
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
    @project.update_attributes(project_params)
    redirect_to project_path(@project.id)
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end

	# def add_user
	# 	project = Project.find(params[:id])
	# 	newuser_email = User.where('user_name' )

	# end

	def complete

		project = Project.find(params[:id])


    project.update_attribute(:status, true)
    

    redirect_to root_path

	end

		def reverse_status
		project = Project.find(params[:id])

    project.update_attribute(:status, false)

    redirect_to root_path

	end



	private

	def project_params
    params.require(:project).permit(:name, :description, :status)
  end

end
