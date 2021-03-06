class ProjectsController < ApplicationController
  before_action :check_for_login

  def index
    @projects = Project.all
  end

  def new
      @project = Project.new

  end

  def create
    project = Project.create project_params
    redirect_to project
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    project = Project.find params[:id]
    project.update project_params
    redirect_to project
  end

  def show
    @project = Project.find params[:id]
  end

  def destroy
    project = Project.find params[:id]
    project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :location, :area, :style, :start_date, :finished, :estimate_time_finish, :image, :cost, :designer_id, :client_id)
  end
end
