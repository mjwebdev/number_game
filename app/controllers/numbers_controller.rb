class NumbersController < ApplicationController
  def index
  	if !session[:random]
  		session[:random] = rand(1..100)
  	end
  end

  def random
  end

  def guess
  	session[:guess] = params[:guess].to_i
  	redirect_to "/result"
  end

  def result
  	if session[:guess] > session[:random]
  		flash[:high] = "You guessed too high, my friend."

  	elsif session[:guess] < session[:random]
  		flash[:low] = "You guessed too low, my friend."
  	else
  		flash[:right] = "You guessed correct. Great Job!!"
  	end
  	redirect_to "/"
  end
end
