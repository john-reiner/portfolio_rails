class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]
  skip_before_action :logged_in, only: [:new, :create, :show]
  # GET /projects or /projects.json
  def index
    # @projects = Project.all
    # render json: @projects
  end

  # GET /projects/1 or /projects/1.json
  def show
    # @project = Project.find(params[:id])
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @project } 
    # end
  end

  # GET /projects/new
  def new
    @project = Project.new

  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects or /projects.json
  def create
    @project = Project.new(project_params)
    @project.user_id = @current_user.id
    params[:technologies][:id].each do |technology_id|
      if !technology_id.empty?
        @project.project_technologies.build(:technology_id => technology_id)
      end
    end
    # byebug


    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update

    params[:technologies][:id].each do |technology_id|
      if !technology_id.empty?
        @project.project_technologies.build(:technology_id => technology_id)
      end
    end
    
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :image, :url, :github, :summary, :user_id, :deployed, technologies_attributes: [:name])
    end
end
