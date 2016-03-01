# == Schema Information
#
# Table name: proposals
#
#  id                  :integer          not null, primary key
#  borrow_condition_id :integer
#  lender_id           :integer
#  rate                :float
#  rate_type           :integer
#  amount              :integer
#  description         :text
#  choiced             :boolean
#  created_at          :datetime
#  updated_at          :datetime
#

class Proposal < ActiveRecord::Base
  belongs_to :lender
  belongs_to :borrow_condition
  delegate :user, to: :borrow_condition
  
  validates :rate, presence: true
  validates :rate_type, presence: true
  validates :amount, presence: true
  validates :description, presence: true
end
