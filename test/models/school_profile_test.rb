# == Schema Information
#
# Table name: school_profiles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  department :string(255)
#  graduation :date
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SchoolProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
