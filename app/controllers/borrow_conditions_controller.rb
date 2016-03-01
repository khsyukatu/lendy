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

class BorrowConditionsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :authenticate_lender!, only: [:show, :index]
  before_action :set_borrow_condition, only: [:show, :edit, :update, :destroy]
  
  def index
    @borrow_conditions = BorrowCondition.all
  end
  
  def show
    if @borrow_condition.proposal_choiced?
      redirect_to borrow_conditions_path, alert: "契約済みの借入状況です。"
    end
  end
  
  def new
    if current_user.user_profile.blank?
      redirect_to new_user_profile_path, notice: "ユーザー情報を入力してください。"
    elsif current_user.school_profile.blank?
      redirect_to new_school_profile_path, notice: "学校情報を入力してください。"
    elsif current_user.business_profile.blank?
      redirect_to new_business_profile_path, notice: "勤務情報を入力してください。"
    else
      @borrow_condition = current_user.build_borrow_condition
    end
  end
  
  def create
    @borrow_condition = current_user.build_borrow_condition(borrow_condition_params)
    if @borrow_condition.save
      redirect_to root_path, notice: "借入状況を追加しました。"
    else
      render :new, alert: "借入状況を追加できませんでした。"
    end
  end
  
  def edit
  end
  
  def update
    if @borrow_condition.update(borrow_condition_params)
      redirect_to root_path, notice: "借入状況を更新しました。"
    else
      render :new, alert:"借入状況を更新できませんでした。"
    end
  end
  
  def destroy
    @borrow_condition.destroy
    redirect_to root_path, notice: "借入状況を削除しました。"
  end
  
  private
  def set_borrow_condition
    @borrow_condition = current_user.borrow_condition
  end
  
  def borrow_condition_params
    params.require(:borrow_condition).permit(:bank, :amount, :rate_type, :rate)
  end
end
