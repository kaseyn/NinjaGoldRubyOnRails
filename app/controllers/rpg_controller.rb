class RpgController < ApplicationController
  def index
    session[:gold] ||= 0
    session[:activities] ||= []
    @gold = session[:gold]
    @activities = session[:activities]
  end

  def farm
    current_time = Time.now
    gold = rand(10..20)
    session[:gold] += gold
    session[:activities] << "Earned #{gold} gold from the farm! (#{current_time.strftime('%Y/%m/%d %I:%M %P')})"
    redirect_to :root
  end

  def cave
    current_time = Time.now
    gold = rand(5..10)
    session[:gold] += gold
    session[:activities] << "Earned #{gold} gold from the cave! (#{current_time.strftime('%Y/%m/%d %I:%M %P')})"
    redirect_to :root
  end

  def house
    current_time = Time.now
    gold = rand(2..5)
    session[:gold] += gold
    session[:activities] << "Earned #{gold} gold from the house! (#{current_time.strftime('%Y/%m/%d %I:%M %P')})"
    redirect_to :root
  end

  def casino
    current_time = Time.now
    gold = rand(-50..50)
    session[:gold] += gold
    if gold >= 0
      session[:activities] << "Entered a casino and won #{gold} gold! (#{current_time.strftime('%Y/%m/%d %I:%M %P')})"
    else  
      gold = gold.abs
      session[:activities] << "Entered a casino and lost #{gold} gold... (#{current_time.strftime('%Y/%m/%d %I:%M %P')})"
    end
    redirect_to :root  
  end
end
