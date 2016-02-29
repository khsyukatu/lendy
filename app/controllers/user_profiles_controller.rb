# == Schema Information
#
# Table name: user_profiles
#
#  id                :integer          not null, primary key
#  school_name       :string(255)
#  school_type       :integer
#  school_department :string(255)
#  school_status     :integer
#  birthday          :date
#  user_id           :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class UserProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user_profile, only: [:edit, :update, :destroy]
  def new
    @user_profile = current_user.build_user_profile
  end
  
  def create
    @user_profile = current_user.build_user_profile(user_profile_params)
    if @user_profile.save
      redirect_to root_path, notice: "ユーザー情報を追加しました。"
    else
      render :new, alert: "ユーザー情報を追加できませんでした。"
    end
  end
  
  def edit
  end
  
  def update
    if @user_profile.update(user_profile_params)
      redirect_to root_path, notice: "ユーザー情報を更新しました。"
    else
      render :new, alert:"ユーザー情報を更新できませんでした。"
    end
  end
  
  def destroy
    @user_profile.destroy
    redirect_to root_path, notice: "ユーザー情報を削除しました。"
  end
  
  private
  def set_user_profile
    @user_profile = current_user.user_profile
  end
  
  def user_profile_params
    params.require(:user_profile).permit(:school_name, :school_type, :school_department, :school_status, :birthday, :user_id)
  end
end
