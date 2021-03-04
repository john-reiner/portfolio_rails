class TechnologiesController < ApplicationController
  before_action :set_technology, only: %i[ show edit update destroy ]
  skip_before_action :logged_in, only: [:show]
  # GET /technologies or /technologies.json
  def index
    @technologies = @current_user.technologies
    # render json: @technologies
  end

  # GET /technologies/1 or /technologies/1.json
  def show
  end

  # GET /technologies/new
  def new
    @technology = Technology.new
  end

  # GET /technologies/1/edit
  def edit
  end

  # POST /technologies or /technologies.json

  def create

    @technology = Technology.new(technology_params)
    @technology.user_id = @current_user.id

    respond_to do |format|
      if @technology.save
        format.html { redirect_to @current_user, notice: "Technology was successfully created." }
        format.json { render :show, status: :created, location: @technology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technologies/1 or /technologies/1.json
  def update
    respond_to do |format|
      if @technology.update(technology_params)
        format.html { redirect_to @current_user, notice: "Technology was successfully updated." }
        format.json { render :show, status: :ok, location: @technology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technologies/1 or /technologies/1.json
  def destroy
    @technology.projects.destroy_all
    @technology.blogs.destroy_all
    @technology.educations.destroy_all
    @technology.experiences.destroy_all
    @technology.destroy
    respond_to do |format|
      format.html { redirect_to @current_user, notice: "Technology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technology
      @technology = Technology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def technology_params
      params.require(:technology).permit(:name, :image, :user_id)
    end
    
end