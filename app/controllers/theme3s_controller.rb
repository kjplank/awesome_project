class Theme3sController < ApplicationController
  def index
    @themes = Theme3.all
  end

  def show
    @theme3 = Theme3.find(params[:id])
  end

  def new
    @theme3 = Theme3.new
  end

  def create
    @theme3 = Theme3.new
    @theme3.innovation = params[:innovation]
    @theme3.reason = params[:reason]
    @theme3.url = params[:url]
    @theme3.image = params[:image]
    @theme3.video = params[:video]
    @theme3.user_id = current_user.id

    if @theme3.save
      redirect_to "/theme3s", :notice => "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
    @theme3 = Theme3.find(params[:id])
  end

  def update
    @theme3 = Theme3.find(params[:id])

    @theme3.innovation = params[:innovation]
    @theme3.reason = params[:reason]
    @theme3.url = params[:url]
    @theme3.image = params[:image]
    @theme3.video = params[:video]
    @theme3.user_id = current_user.id

    if @theme3.save
      redirect_to "/theme3s", :notice => "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme3 = Theme3.find(params[:id])

    @theme3.destroy

    redirect_to "/theme3s", :notice => "Idea deleted."
  end
end
