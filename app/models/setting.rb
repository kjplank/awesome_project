class Setting < ActiveRecord::Base

# validates :show_votes, :presence => true
# validates :show_all_ideas, :presence => true
validates :theme_1, :presence => true
validates :theme_2, :presence => true
validates :theme_3, :presence => true


end
