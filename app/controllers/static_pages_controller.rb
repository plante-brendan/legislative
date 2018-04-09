class StaticPagesController < ApplicationController
  def home
    bills = Bill.order("RANDOM()").where(vip: true)
    if bills.length < 2
      if bills.length == 0
        @billOne = Bill.first
        @billTwo = Bill.last
      else
        @billOne = bills.first
        @billTwo = Bill.where(vip: false).first
      end
    else
      @billOne = bills.first
      @billTwo = bills.last
    end
  end
end