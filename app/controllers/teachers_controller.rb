class TeachersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @teacher = current_user.teachers.find(params[:id])
  end

  def new
    @teacher = current_user.teachers.build
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def create
    @teacher = current_user.teachers.build(teacher_params)
    # @teacher = Teacher.new(teacher_params)
    # @teacher.user = current_user
   if @teacher.save
     @teacher.save
     redirect_to teacher_path(@teacher), notice: 'Teacher was saved.'
   else
     redirect_to new_teacher_path, notice: 'Teacher was not saved.', alert: @teacher.errors.full_messages
   end
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(name: params[:name])
    redirect_to teacher_path(@teacher)
  end

  def destroy
      @teacher = current_user.teachers.find(params[:id])
    if @teacher.teachings.empty?
      @teacher.destroy
      redirect_to root_path, notice: 'This teacher has been deleted.'
    else
      redirect_to root_path, alert: "This teacher has teachings. Delete all teachings first."
    end
  end

  def most_common
    @most_common = User.most_common_teacher(current_user)
  end


  private

  def teacher_params
    params.require(:teacher).permit(:name)
  end
end
