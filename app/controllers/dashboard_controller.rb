class DashboardController < ApplicationController
  before_filter :authenticate_lender!, only: [:index]
  def index
    @proposals = current_lender.proposals
  end
end
