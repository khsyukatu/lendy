# == Schema Information
#
# Table name: user_profiles
#
#  id                :integer          not null, primary key
#  school_name       :string(255)
#  school_type       :integer
#  school_department :string(255)
#  school_status     :integer
#  birthday          :date
#  user_id           :integer
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class UserProfilesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
