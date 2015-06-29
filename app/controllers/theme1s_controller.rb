class Theme1sController < ApplicationController
  def index
    @theme1s = Theme1.all
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
    @theme1.innovation_votes = params[:innovation_votes]
    @theme1.user_id = params[:user_id]

    if @theme1.save
      redirect_to "/theme1s", :notice => "Theme1 created successfully."
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
    @theme1.innovation_votes = params[:innovation_votes]
    @theme1.user_id = params[:user_id]

    if @theme1.save
      redirect_to "/theme1s", :notice => "Theme1 updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme1 = Theme1.find(params[:id])

    @theme1.destroy

    redirect_to "/theme1s", :notice => "Theme1 deleted."
  end
end
