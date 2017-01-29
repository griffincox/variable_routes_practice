class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @the_number = params[:the_number]
    @the_number = @the_number.to_i * @the_number.to_i
    render("square.html.erb")
  end

end
