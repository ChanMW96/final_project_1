class ProjectsController < ApplicationController

  def search
    @projects = Project.search params[:project][:name], match: :phrase
  end

  def advanced_search
    arr = params[:project][:tag_ids].map! {|t| t.to_i }
    taggings = ActsAsTaggableOn::Tagging.where(id:arr)
    projects_ids = []
    taggings.each do |tagging|
      projects_ids << tagging.project_id
    end

    @projects = Project.search params[:project][:name], match: :phrase,
    where: {
      id: projects_ids
    }
  end

  def send_email
    MailingJob.perform_later(current_user,params[:msg])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.valid?
      @project.save
      redirect_to projects_path(@project.id)
    else
      redirect_to new_projects_path
    end
  end

  def edit
    @project = Project.find(:project_id)
  end

  def update
    @project = Project.find(:project_id)
    if @project.update(params[:project])
      redirect_to projects_path(@project.id)
    else
      redirect_to edit_projects_path
    end
  end

  def show
    @funding = Funding.new
  end

  def destroy
    @project = Project.find(:project_id)
    @project.destroy
  end

  def index
    @projects = Project.all
  end
end
