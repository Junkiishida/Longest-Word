class QuestionsController < ApplicationController
  def ask
    @question = params[:controller]
  end

  def answer
    @question = params[:question]
    @answer =
    if @question == "I'm going to work."
      "Great!"
    elsif @question.end_with?("?")
      "Silly question, get dressed and go to work."
    else
      "I don't care... Go to work."
    end
  end
end
