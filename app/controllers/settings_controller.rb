class SettingsController < ApplicationController
  def index
    @settings = Setting.all
  end

  def update
    @settings = Setting.new
    @settings.show_votes = params[:show_votes]
    @settings.show_all_ideas = params[:show_all_ideas]
    @settings.theme_1 = params[:theme_1]
    @settings.theme_2 = params[:theme_2]
    @settings.theme_3 = params[:theme_3]

    if @settings.save
      redirect_to "/settings", :notice => "Settings updated successfully."
    else
      redirect_to "/settings"
    end
  end

  # def show
  #   @setting = Setting.find(params[:id])
  # end

  # def new
  #   @setting = Setting.new
  # end

  # def create
  #   @setting = Setting.new
  #   @setting.show_votes = params[:show_votes]
  #   @setting.show_all_ideas = params[:show_all_ideas]

  #   if @setting.save
  #     redirect_to "/settings", :notice => "Setting created successfully."
  #   else
  #     render 'new'
  #   end
  # end

  # def edit
  #   @setting = Setting.all
  # end

  # def destroy
  #   @setting = Setting.find(params[:id])

  #   @setting.destroy

  #   redirect_to "/settings", :notice => "Setting deleted."
  # end
end
