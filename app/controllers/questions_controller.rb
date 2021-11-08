class QuestionsController < ApplicationController
  
  def home
  end

  def ask
  end
  
  def answer
    @question = params[:question]
    @answer = coach_answer
  end
  
  def coach_answer
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
