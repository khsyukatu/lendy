# == Schema Information
#
# Table name: borrow_conditions
#
#  id         :integer          not null, primary key
#  bank       :string(255)
#  amount     :integer
#  rate_type  :integer
#  rate       :float
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class BorrowConditionsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
