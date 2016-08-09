class FundingsController < ApplicationController
  def new
  	@funding = Funding.new
  end

  def create
    @funding = Funding.new
  end
end
