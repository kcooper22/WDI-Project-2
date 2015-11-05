class ProjectsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
		@user =  current_user
	end


	def new

 		@project = Project.new
	end

	def create

    @project = Project.create(project_params)
    binding.pry
    @project.users << current_user

 #  def add_user
	#   user = current_user
	#   project = Project.find(params[:id])
	#   project.users << user
	#   redirect_to product_path(product)
	# end


	end

	private

	def project_params
    params.require(:project).permit(:name, :description, :status)
  end


end
