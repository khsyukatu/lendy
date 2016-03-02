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

class ProposalsController < ApplicationController
  before_filter :authenticate_lender!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:index, :choice_proposal]
  before_action :set_proposal, only: [:edit, :update, :destroy]
  
  def index
    @proposals = current_user.proposals
  end
  
  def show
    if user_signed_in?
      @proposal = current_user.proposals.find(params[:id])
    elsif lender_signed_in?
      @proposal = current_lender.proposals.find(params[:id])
    else
      redirect_to root_path, alert: "このページにはアクセスすることができません"
    end
  end
  
  def new
    @proposal = current_lender.proposals.build
  end
  
  def create
    @proposal = current_lender.proposals.build(proposal_params)
    if @proposal.save
      redirect_to root_path, notice: "借入提案を作成しました。"
    else
      render :new, alert: "借入提案を作成できませんでした。"
    end
  end
  
  def edit
  end
  
  def update
    if @proposal.update(proposal_params)
      redirect_to root_path, notice: "借入提案を更新しました。"
    else
      render :new, alert:"借入提案を更新できませんでした。"
    end
  end
  
  def destroy
    @proposal.destroy
    redirect_to root_path, notice: "借入提案を削除しました。"
  end
  
  def choice_proposal
    @proposal = current_user.proposals.find(params[:id])
    @proposal.update_attributes(choiced: true)
    redirect_to :mypage, notice: "提案を承認しました。金融機関から直接メールもしくはお電話でご連絡がきます。"
  end
  
  def complete_proposal
    @proposal = current_lender.proposals.find(params[:id])
    @proposal.update_attributes(completed: Time.now)
    FormMailer.proposal_complete(@proposal).deliver
    redirect_to :dashboard, notice: "契約を完了しました。"
  end
  
  private
  def set_proposal
    @proposal = current_user.proposals.find(params[:id])
  end
  
  def proposal_params
    params.require(:proposal).permit(:borrow_condition_id, :lender_id, :rate, :rate_type, :amount, :description, :choiced, :completed)
  end
end
