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
  	@cost = params[:cost].to_f
  	@rev = params[:revenue].to_f	
  	render :layout => "calculate" 
  end
end

