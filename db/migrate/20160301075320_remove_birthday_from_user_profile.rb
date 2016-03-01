class RemoveBirthdayFromUserProfile < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :birthday
  end
end
