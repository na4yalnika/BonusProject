class DashboardsController < ApplicationController
  before_action :require_user

  def index
  end

  def sent
  end

  def received
  	@transactions = Transaction.all
  end

  def settings
  end

end
