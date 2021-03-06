class FormMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def proposal(proposal)
    @user = proposal.user
    mail(to: @user.email, subject: "借り換えご提案のご連絡")
  end
  
  def proposal_confirmation(proposal)
    @user = proposal.user
    @lendeer = proposal.lender
    mail(to: @lender.email, subject: "借り換え提案承認のご連絡")
  end
  
  def proposal_complete(proposal)
    @lender = proposal.lender
    @user = proposal.user
    mail(to: "info@unistyleinc.com", subject: "【契約完了通知】#{@lender.name}様")
  end
end
