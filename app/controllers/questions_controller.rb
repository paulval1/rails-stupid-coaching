class QuestionsController < ApplicationController
  def ask
    @ask = params[:ask]
  end

  def answer
    @q = params[:question]
    if @q.rstrip == 'I am going to work'
      @ans = 'Great!'
    elsif @q.rstrip[-1] == '?'
      @ans = 'Silly question, get dressed and go to work!'
    else
      @ans = 'I don\'t care, get dressed and go to work!'
    end
  end
end
