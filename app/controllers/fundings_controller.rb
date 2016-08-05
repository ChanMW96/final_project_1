class FundingsController < ApplicationController
  def new
  end

  def create
    @funding = Funding.new
  end
end
