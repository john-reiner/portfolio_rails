class EducationsController < ApplicationController
  before_action :set_education, only: %i[ show edit update destroy ]

  # GET /educations or /educations.json
  def index
    @educations = @current_user.educations
  end

  # GET /educations/1 or /educations/1.json
  def show
  end

  # GET /educations/new
  def new
    @education = Education.new
  end

  # GET /educations/1/edit
  def edit
  end

  # POST /educations or /educations.json
  def create
    @education = Education.new(education_params)
    @education.user_id = @current_user.id
    
    params[:skills][:id].each do |skill_id|
      if !skill_id.empty?
        @education.education_skills.build(:skill_id => skill_id)
      end 
    end 

    params[:technologies][:id].each do |technology_id|
      if !technology_id.empty?
        @education.education_technologies.build(:technology_id => technology_id)
      end
    end


    respond_to do |format|
      if @education.save
        format.html { redirect_to @education, notice: "Education was successfully created." }
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educations/1 or /educations/1.json
  def update

    if params[:technologies][:id].length != 1 
      # destroy the old record
      @education.education_technologies.each do |tech|
        tech.destroy
      end
      #build the new ones
      params[:technologies][:id].each do |technology_id|
        if !technology_id.empty?
          @education.education_technologies.build(:technology_id => technology_id)
        end
      end
    end

    if params[:skills][:id].length != 1 
      # destroy the old record
      @education.education_skills.each do |skill|
        skill.destroy
      end
      #build the new ones

      params[:skills][:id].each do |skill_id|
        if !skill_id.empty?
          @education.education_skills.build(:skill_id => skill_id)
        end
      end
    end

    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to @education, notice: "Education was successfully updated." }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1 or /educations/1.json
  def destroy
    @education.technologies.destroy_all
    @education.skills.destroy_all
    @education.destroy
    respond_to do |format|
      format.html { redirect_to @current_user, notice: "Education was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      @education = Education.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def education_params
      params.require(:education).permit(:end_date, :title, :description, :user_id, :address)
    end
end
