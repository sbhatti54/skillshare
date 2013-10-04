class PagesController < ApplicationController
  def home
  end

  def about	
  end

  def coverflow
  end

  def cat
  end

  def tetris
  end

  def roi
  end

   def results
   	render :layout => "calculate" 
  end

  def calculate
  	@email_cost_of_campaign = params[:ecoc].to_f
  	@cost_per_redemption = params[:cpr].to_f
  	@email_number_of_redemptions = params[:red].to_f	
  	@revenue_per_redemption = params[:rev].to_f
  	@email_total_cost = @email_cost_of_campaign + (@email_number_of_redemptions * @cost_per_redemption)
  	@email_total_revenue = @revenue_per_redemption * @email_number_of_redemptions
  	@email_profit = @email_total_revenue - @email_total_cost
  	@email_roi = 100 * (@email_profit) / @email_total_cost	
    @wallet_manager_cost_of_campaign = params[:wmcoc].to_f
    @wallet_manager_number_of_redemptions = @email_number_of_redemptions * 1.07
    @wallet_manager_total_cost = @wallet_manager_cost_of_campaign + (@wallet_manager_number_of_redemptions * @cost_per_redemption)
    @wallet_manager_total_revenue = @revenue_per_redemption * @wallet_manager_number_of_redemptions
    @wallet_manager_profit = @wallet_manager_total_revenue - @wallet_manager_total_cost
    @wallet_manager_roi =100 * @wallet_manager_profit / @wallet_manager_total_cost

  	render :layout => "calculate" 
  end
end

