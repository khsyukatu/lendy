# == Schema Information
#
# Table name: school_profiles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  department :string(255)
#  graduation :date
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class SchoolProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_school_profile, only: [:edit, :update, :destroy]
  def new
    @school_profile = current_user.build_school_profile
  end
  
  def create
    @school_profile = current_user.build_school_profile(school_profile_params)
    if @school_profile.save
      redirect_to root_path, notice: "ユーザー情報を追加しました。"
    else
      render :new, alert: "ユーザー情報を追加できませんでした。"
    end
  end
  
  def edit
  end
  
  def update
    if @school_profile.update(school_profile_params)
      redirect_to root_path, notice: "ユーザー情報を更新しました。"
    else
      render :new, alert:"ユーザー情報を更新できませんでした。"
    end
  end
  
  def destroy
    @school_profile.destroy
    redirect_to root_path, notice: "ユーザー情報を削除しました。"
  end
  
  private
  def set_school_profile
    @school_profile = current_user.school_profile
  end
  
  def school_profile_params
    params.require(:school_profile).permit(:name, :department, :graduation)
  end
end
