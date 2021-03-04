class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[ show edit update destroy ]

  # GET /experiences or /experiences.json
  def index
    @experiences = @current_user.experiences
  end

  # GET /experiences/1 or /experiences/1.json
  def show
  end

  # GET /experiences/new
  def new
    @experience = Experience.new
  end

  # GET /experiences/1/edit
  def edit
  end

  # POST /experiences or /experiences.json
  def create
    @experience = Experience.new(experience_params)
    @experience.user_id = @current_user.id

    params[:technologies][:id].each do |technology_id|
      if !technology_id.empty?
        @experience.experience_technologies.build(:technology_id => technology_id)
      end
    end
    respond_to do |format|
      if @experience.save
        format.html { redirect_to @experience, notice: "Experience was successfully created." }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiences/1 or /experiences/1.json
  def update

    params[:technologies][:id].each do |technology_id|
      if !technology_id.empty? 
        @experience.experience_technologies.update(:technology_id => technology_id)
      end
    end

    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to @experience, notice: "Experience was successfully updated." }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1 or /experiences/1.json
  def destroy
    @experience.technologies.destroy_all
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to experiences_url, notice: "Experience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def experience_params
      params.require(:experience).permit(:start_date, :end_date, :title, :description, :user_id)
    end
end
