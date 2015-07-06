class Theme2sController < ApplicationController
  def index
    @themes = Theme2.all
  end

  def show
    @theme2 = Theme2.find(params[:id])
  end

  def new
    @theme2 = Theme2.new
  end

  def create
    @theme2 = Theme2.new
    @theme2.innovation = params[:innovation]
    @theme2.reason = params[:reason]
    @theme2.url = params[:url]
    @theme2.image = params[:image]
    @theme2.video = params[:video]
    @theme2.user_id = current_user.id

    if @theme2.save
      redirect_to "/theme2s", :notice => "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
    @theme2 = Theme2.find(params[:id])
  end

  def update
    @theme2 = Theme2.find(params[:id])

    @theme2.innovation = params[:innovation]
    @theme2.reason = params[:reason]
    @theme2.url = params[:url]
    @theme2.image = params[:image]
    @theme2.video = params[:video]
    @theme2.user_id = current_user.id

    if @theme2.save
      redirect_to "/theme2s", :notice => "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme2 = Theme2.find(params[:id])

    @theme2.destroy

    redirect_to "/theme2s", :notice => "Idea deleted."
  end
end
