# == Schema Information
#
# Table name: business_profiles
#
#  id         :integer          not null, primary key
#  job_status :integer
#  company    :string(255)
#  job_type   :integer
#  job_title  :string(255)
#  income     :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class BusinessProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
