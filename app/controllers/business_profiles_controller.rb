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

class BusinessProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_business_profile, only: [:edit, :update, :destroy]
  def new
    @business_profile = current_user.build_business_profile
  end
  
  def create
    @business_profile = current_user.build_business_profile(business_profile_params)
    if @business_profile.save
      redirect_to root_path, notice: "勤務状況を追加しました。"
    else
      render :new, alert: "勤務状況を追加できませんでした。"
    end
  end
  
  def edit
  end
  
  def update
    if @business_profile.update(business_profile_params)
      redirect_to root_path, notice: "勤務状況を更新しました。"
    else
      render :new, alert:"勤務状況を更新できませんでした。"
    end
  end
  
  def destroy
    @business_profile.destroy
    redirect_to root_path, notice: "勤務状況を削除しました。"
  end
  
  private
  def set_business_profile
    @business_profile = current_user.business_profile
  end
  
  def business_profile_params
    params.require(:business_profile).permit(:job_status, :company, :job_type, :job_title, :income, :user_id)
  end
end
