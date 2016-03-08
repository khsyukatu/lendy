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

  def proposaled?(lender)
    if self.proposals.where(lender_id: lender).present?
      true
    end
  end
  
  def rate_type_view
    if self.rate_type == 1
      return "変動"
    elsif self.rate_type == 2
      return "固定"
    end
  end  
end
