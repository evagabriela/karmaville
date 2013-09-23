class AddKarmaPointsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma_points_count, :integer, :default => 0
  end
end
