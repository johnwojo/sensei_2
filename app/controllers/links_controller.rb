class LinksController < ApplicationController
  before_action :authenticate_user!
  def index
    @links = current_user.links
  end

  def show
    @link = current_user.links.find(params[:id])
  end

  def new
    @link = current_user.links.build
  end

  def edit
    @link = Link.find(params[:id])
  end

  def create
    @link = current_user.links.build(link_params)
     if @link.save
       @link.save
       redirect_to link_path(@link), notice: 'Link was saved.'
     else
       redirect_to new_link_path, notice: 'Link was not saved.', alert: @link.errors.full_messages
     end
  end

end
