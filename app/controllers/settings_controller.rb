class SettingsController < ApplicationController
  def index
    @settings = Setting.all
  end

  def instructions
     @theme1s = Theme1.all.sort_by(&:innovation_votes).reverse
     @theme2s = Theme2.all.sort_by(&:innovation_votes).reverse
     @theme3s = Theme3.all.sort_by(&:innovation_votes).reverse
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

  def cast_vote
    a = params[:theme]
    b = params[:theme_id]
    @theme = a.capitalize.constantize.find(b)
    @user = current_user

    if @user.user_votes.present? && @user.user_votes < 10
      if @theme.innovation_votes.present?
        @theme.innovation_votes = @theme.innovation_votes + 1
        @theme.save
      else
        @theme.innovation_votes = 1
        @theme.save
      end

      @user.user_votes = @user.user_votes + 1
      @user.save
      vote_message = "Vote cast. You have voted #{@user.user_votes} of 10 times."
    end

    if @user.user_votes.nil? || @user.user_votes == 0
      if @theme.innovation_votes.present?
        @theme.innovation_votes = @theme.innovation_votes + 1
        @theme.save
      else
        @theme.innovation_votes = 1
        @theme.save
      end
      @user.user_votes = 1
      @user.save
      vote_message = "You just cast your first vote.  Nice!"
    end

    if @user.user_votes == 10
      vote_message = "You're all out of votes. Thanks for participating!"
    end

    redirect_to "/#{params[:theme]}s", :notice => "#{vote_message}"
  end

  def reset_votes

    (1...5).each do |i|
      theme = "Theme" + i.to_s
      @theme = theme.constantize.all

      @theme.each do |theme|
        theme.innovation_votes = 0
        theme.save
      end
    end

    @user = User.all
    @user.each do |user|
      user.user_votes = 0
      user.save
    end
    redirect_to "/settings", :notice => "All votes reset."
  end

  def delete_image
    a = params[:theme]
    b = params[:theme_id]

    @theme = a.capitalize.constantize.find(b)
    @theme.remove_image!
    @theme.save

    redirect_to "/#{a}s/#{b}/edit", :notice => "Image deleted."
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
