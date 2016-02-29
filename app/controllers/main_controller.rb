class MainController < ApplicationController
  layout 'main'
  def index
    if user_signed_in?
      redirect_to mypage_path
    end
  end
end
