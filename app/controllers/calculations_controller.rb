class CalculationsController < ApplicationController
  def square
    @user_number = params[:user_number].to_f
    @square = @user_number **2
    render ("calculations/square.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number **2

    render("calculations/flex_square_5.html.erb")
  end

  # square root
  def flex_square_root
    @user_number= params["num"].to_f
    @squareroot = @user_number **(0.5)
    render("calculations/flex_square_root.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_number = params[:user_number].to_f
    @squareroot = @user_number **(0.5)
    render ("calculations/square_root.html.erb")
  end

  # loan payment calcs
  def flex_payment
    @interest = (params["basis_points"].to_f)/100
    @years = params["number_of_years"].to_f
    @principal = params["present_value"].to_f
    @payments =((@interest/100/12)*@principal)/(1-((1+@interest/100/12))**(-@years*12))
    render("calculations/flex_payment.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    @interest = (params[:interest_rate].to_f)
    @years = params[:years].to_f
    @principal = params[:principal].to_f
    @payments =((@interest/100/12)*@principal)/(1-((1+@interest/100/12))**(-@years*12))
    render ("calculations/payment.html.erb")
  end

  # random calculations
  def flex_random
    @min = (params["min"].to_f)
    @max = (params["max"].to_f)
    @random = rand(@min..@max)

    render ("calculations/flex_random.html.erb")
  end

end
