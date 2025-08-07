class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :login, :signup, :dashboard ]
  

  def login
    render :login
  end

  def signup
    render :signup
  end

  def dashboard
    render :dashboard
  end
end
