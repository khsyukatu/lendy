# == Schema Information
#
# Table name: user_profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  name2      :string(255)
#  yomi       :string(255)
#  yomi2      :string(255)
#  tel        :string(255)
#  zipcode    :string(255)
#  prefecture :string(255)
#  city       :string(255)
#  apartment  :string(255)
#  birthday   :date
#

require 'test_helper'

class UserProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
