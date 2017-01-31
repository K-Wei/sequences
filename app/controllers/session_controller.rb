class SessionController < ApplicationController

  def new

    render("attempts/attempt.html.erb")

  end

  def try

    @num1, @num2, @num3 = params[:first_number], params[:second_number], params[:third_number]


    if @num1 == nil || @num2 == nil || @num3 == nil
    # this is to prevent any errors when arriving at the page for the first time
    elsif @num1 < @num2 && @num2 < @num3
      @check_obedience = "Yes!"
    else
      @check_obedience = "No."
    end

    render("attempts/attempt.html.erb")
  end

  def show

    @answer_attempt = params[:rule]


    render("answers/answer.html.erb")
  end

end
