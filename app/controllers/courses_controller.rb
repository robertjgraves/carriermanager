class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course].permit(:miles, :origin_id, :destination_id))

    if @course.save
      redirect_to courses_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
