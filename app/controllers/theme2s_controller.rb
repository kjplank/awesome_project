class Theme2sController < ApplicationController
  def index
    @theme2s = Theme2.all
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
    @theme2.innovation_votes = params[:innovation_votes]
    @theme2.user_id = params[:user_id]

    if @theme2.save
      redirect_to "/theme2s", :notice => "Theme2 created successfully."
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
    @theme2.innovation_votes = params[:innovation_votes]
    @theme2.user_id = params[:user_id]

    if @theme2.save
      redirect_to "/theme2s", :notice => "Theme2 updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme2 = Theme2.find(params[:id])

    @theme2.destroy

    redirect_to "/theme2s", :notice => "Theme2 deleted."
  end
end
