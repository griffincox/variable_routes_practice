class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @the_number = params[:the_number]
    @sqrt_of_the_number = Math.sqrt(@the_number.to_i)
    render("square_root.html.erb")
  end
  def random
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @random_num = rand(@num1..@num2)
  end
  def payment
    @apr = params[:apr].to_f
    @apr_percent = @apr/100
    @rate_percent = @apr_percent/12
    @years = params[:years].to_i
    @principal = params[:principal].to_f
    @months = @years * 12
    @monthly_payment = @principal*@rate_percent/(1-1/(1+@rate_percent)**(@months))
  end
end
