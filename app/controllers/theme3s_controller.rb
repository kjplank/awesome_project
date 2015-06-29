class Theme3sController < ApplicationController
  def index
    @theme3s = Theme3.all
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
    @theme3.innovation_votes = params[:innovation_votes]
    @theme3.user_id = params[:user_id]

    if @theme3.save
      redirect_to "/theme3s", :notice => "Theme3 created successfully."
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
    @theme3.innovation_votes = params[:innovation_votes]
    @theme3.user_id = params[:user_id]

    if @theme3.save
      redirect_to "/theme3s", :notice => "Theme3 updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme3 = Theme3.find(params[:id])

    @theme3.destroy

    redirect_to "/theme3s", :notice => "Theme3 deleted."
  end
end
