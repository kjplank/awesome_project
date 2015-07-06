class Theme1sController < ApplicationController
  def index
    @themes = Theme1.all
  end

  def show
    @theme1 = Theme1.find(params[:id])
  end

  def new
    @theme1 = Theme1.new
  end

  def create
    @theme1 = Theme1.new
    @theme1.innovation = params[:innovation]
    @theme1.reason = params[:reason]
    @theme1.url = params[:url]
    @theme1.image = params[:image]
    @theme1.video = params[:video]
    @theme1.user_id = current_user.id

    if @theme1.save
      redirect_to "/theme1s", :notice => "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
    @theme1 = Theme1.find(params[:id])
  end

  def update
    @theme1 = Theme1.find(params[:id])

    @theme1.innovation = params[:innovation]
    @theme1.reason = params[:reason]
    @theme1.url = params[:url]
    @theme1.image = params[:image]
    @theme1.video = params[:video]
    @theme1.user_id = current_user.id

    if @theme1.save
      redirect_to "/theme1s", :notice => "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme1 = Theme1.find(params[:id])

    @theme1.destroy

    redirect_to "/theme1s", :notice => "Idea deleted."
  end
end
