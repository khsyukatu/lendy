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

class ProposalsController < ApplicationController
  before_filter :authenticate_lender!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:show, :index, :choice_proposal]
  before_action :set_proposal, only: [:edit, :update, :destroy]
  
  def index
    @proposals = current_user.proposals
  end
  
  def show
    @proposal = current_user.proposals.find(params[:id])
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
    redirect_to :mypage
  end
  
  private
  def set_proposal
    @proposal = current_user.proposals.find(params[:id])
  end
  
  def proposal_params
    params.require(:proposal).permit(:borrow_condition_id, :lender_id, :rate, :rate_type, :amount, :description, :choiced)
  end
end
