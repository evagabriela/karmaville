class AddValueToKarmaPointCounts < ActiveRecord::Migration
  def change
  	user_karma = KarmaPoint.group(:user_id).sum(:value)
  	user_karma.each do |user_id, value|
  		user = User.find_by_id(user_id)
			user.update_attributes(:karma_points_count => value)
  	end
  end
end



