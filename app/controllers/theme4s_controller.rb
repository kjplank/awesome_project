class Theme4sController < ApplicationController
  def index
    @themes = Theme4.all
  end

  def show
    @theme4 = Theme4.find(params[:id])
  end

  def new
    @theme4 = Theme4.new
  end

  def create
    @theme4 = Theme4.new
    @theme4.innovation = params[:innovation]
    @theme4.reason = params[:reason]
    @theme4.url = params[:url]
    @theme4.image = params[:image]
    @theme4.video = params[:video]
    @theme4.user_id = current_user.id

    if @theme4.save
      redirect_to "/theme4s", :notice => "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
    @theme4 = Theme4.find(params[:id])
  end

  def update
    @theme4 = Theme4.find(params[:id])

    @theme4.innovation = params[:innovation]
    @theme4.reason = params[:reason]
    @theme4.url = params[:url]
    @theme4.image = params[:image]
    @theme4.video = params[:video]
    @theme4.user_id = current_user.id

    if @theme4.save
      redirect_to "/theme4s", :notice => "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme4 = Theme4.find(params[:id])

    @theme4.destroy

    redirect_to "/theme4s", :notice => "Idea deleted."
  end
end
