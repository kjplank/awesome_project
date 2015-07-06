class Theme5sController < ApplicationController
  def index
    @themes = Theme5.all
  end

  def show
    @theme5 = Theme5.find(params[:id])
  end

  def new
    @theme5 = Theme5.new
  end

  def create
    @theme5 = Theme5.new
    @theme5.innovation = params[:innovation]
    @theme5.reason = params[:reason]
    @theme5.url = params[:url]
    @theme5.image = params[:image]
    @theme5.video = params[:video]
    @theme5.innovation_votes = params[:innovation_votes]
    @theme5.user_id = params[:user_id]

    if @theme5.save
      redirect_to "/theme5s", :notice => "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
    @theme5 = Theme5.find(params[:id])
  end

  def update
    @theme5 = Theme5.find(params[:id])

    @theme5.innovation = params[:innovation]
    @theme5.reason = params[:reason]
    @theme5.url = params[:url]
    @theme5.image = params[:image]
    @theme5.video = params[:video]
    @theme5.innovation_votes = params[:innovation_votes]
    @theme5.user_id = params[:user_id]

    if @theme5.save
      redirect_to "/theme5s", :notice => "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme5 = Theme5.find(params[:id])

    @theme5.destroy

    redirect_to "/theme5s", :notice => "Idea deleted."
  end
end
