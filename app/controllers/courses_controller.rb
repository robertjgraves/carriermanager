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
    @course = Course.find(params[:id])

    if @course.update(params[:course].permit(:miles, :origin_id, :destination_id))
      redirect_to @course
    else
      render 'edit'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

end
