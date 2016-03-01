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

class UserProfile < ActiveRecord::Base
  belongs_to :user
  
  validates :name, presence: true
  validates :name2, presence: true
  validates :yomi, presence: true
  validates :yomi2, presence: true
  validates :tel, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :apartment, presence: true
  validates :birthday, presence: true
end
