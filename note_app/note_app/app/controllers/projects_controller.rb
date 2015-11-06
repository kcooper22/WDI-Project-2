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

	def add_user
		project = Project.find(params[:id])
		newuser = User.where('user_name' = )

	end


	private

	def project_params
    params.require(:project).permit(:name, :description, :status)
  end

end
