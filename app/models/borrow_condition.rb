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

class BorrowCondition < ActiveRecord::Base
  belongs_to :user
  has_many :proposals
 
  validates :bank, presence: true
  validates :amount, presence: true
  validates :rate_type, presence: true
  validates :rate, presence: true
   
  def proposal_choiced?
    if self.proposals.where(choiced: true).present?
      true
    end
  end
end
