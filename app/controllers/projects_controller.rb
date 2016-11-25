class ProjectsController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :create, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]


  def index
    @projects = Project.all.order("created_at desc")
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = current_user.projects.build(project_params)

    if @project.save
      flash[:success] = "Project Added!"
      redirect_to @project
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def destroy
    @project= Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
  end

  private

    def project_params
      params.require(:project).permit(:title, 
                                      :subtitle, 
                                      :abstract, 
                                      :content, 
                                      :link)
    end

    def correct_user
      @project = current_user.projects.find_by(id: params[:id])
      redirect_to root_url if @project.nil?
    end
end
