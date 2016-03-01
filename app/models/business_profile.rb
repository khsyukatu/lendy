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

class BusinessProfile < ActiveRecord::Base
  belongs_to :user
  
  validates :job_status, presence: true
  validates :company, presence: true
  validates :job_type, presence: true
  validates :job_title, presence: true
  validates :income, presence: true
  
end
