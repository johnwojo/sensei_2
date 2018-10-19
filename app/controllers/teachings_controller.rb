class TeachingsController < ApplicationController
before_action :authenticate_user!

  def index
    if params[:teacher_id]
      @teacher = current_user.teachers.find_by(:id => params[:teacher_id])
      @teachings = @teacher.teachings
    else
      @teachings = current_user.teachings.all
    end
  end

  def show
    @teaching = current_user.teachings.find(params[:id])
    @teachings = current_user.teachings.all
  end

  def new
    @teaching = current_user.teachings.build
  end

  def edit
    @teaching = Teaching.find(params[:id])
  end

  def create
    @teaching = Teaching.new(teaching_params)
    # @teaching.user = current_user
   if @teaching.save
     @teaching.save
     redirect_to teaching_path(@teaching), notice: 'Teaching was saved.'
   else
     redirect_to new_teaching_path, notice: 'Teaching was not saved.', alert: @teaching.errors.full_messages
   end
  end

  def update
    @teaching = Teaching.find(params[:id])
    @teaching.update(name: params[:name], content: params[:content], media_type: params[:media_type], source: params[:source])
    redirect_to teaching_path(@teaching)
   end

  def destroy
    @teaching = current_user.teachings.find(params[:id])
    @teaching.destroy
    redirect_to root_path, notice: 'This teaching has been deleted.'
  end
  
  private

  def teaching_params
    params.require(:teaching).permit(:name, :content, :media_type, :source, :favorite, :teacher_id)
  end
end
