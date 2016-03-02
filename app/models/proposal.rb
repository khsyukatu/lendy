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
#  completed           :datetime
#

class Proposal < ActiveRecord::Base
  belongs_to :lender
  belongs_to :borrow_condition
  delegate :user, to: :borrow_condition
  
  validates :rate, presence: true
  validates :rate_type, presence: true
  validates :amount, presence: true
  validates :description, presence: true
  
  def rate_type_view
    if self.rate_type == 1
      return "変動"
    elsif self.rate_type == 2
      return "固定"
    end
  end  
end
