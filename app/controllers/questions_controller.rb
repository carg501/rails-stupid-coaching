class QuestionsController < ApplicationController
  def ask

  end

  def answer
  @query = params[:question]

    if @query.downcase == "i am going to work right now!"
       @query = ""

    elsif @query.end_with?("?")
      @query = "Silly question, get dressed and go to work!"
    else
      @query = "I don't care, get dressed and go to work!"
    end
  end

end
