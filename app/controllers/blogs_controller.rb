class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]
  skip_before_action :logged_in, only: [:sort]
  # GET /blogs or /blogs.json
  def index
    @blogs = @current_user.blogs
  end

  # GET /blogs/1 or /blogs/1.json
  def show
  end

  def sort
    technology = Technology.find(params[:id])
    render json: technology.blogs, :include => :technologies
  end 

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)

    @blog.user_id = @current_user.id

    params[:technologies][:id].each do |technology_id|
      if !technology_id.empty?
        @blog.blog_technologies.build(:technology_id => technology_id)
      end
    end

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update

    if params[:technologies][:id].length != 1 
      # destroy the old record
      @blog.blog_technologies.each do |tech|
        tech.destroy
      end
      #build the new ones
      params[:technologies][:id].each do |technology_id|
        if !technology_id.empty?
          @blog.blog_technologies.build(:technology_id => technology_id)
        end
      end
    end


    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.technologies.destroy_all
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to @current_user, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :address, :image, :summary, :date)
    end
end
