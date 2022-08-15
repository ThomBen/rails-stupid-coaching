COACH_ANSWER_WORK = "I am going to work"
ANSWER_WORK = "Great!"
COACH_ANSWER_QUESTION = "Silly question, get dressed and go to work!"
ANSWER_ELSE = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def question?(str)
    return true if str.end_with?('?')
  end

  def stupid_coach(string)
    # if is_question?(string)
    #   return COACH_ANSWER_QUESTION
    # else
    #   if string === COACH_ANSWER_WORK
    #     return ANSWER_WORK
    #   else
    #     return ANSWER_ELSE
    #   end
    # end
    question?(string) ? COACH_ANSWER_QUESTION : (string === COACH_ANSWER_WORK ? ANSWER_WORK : ANSWER_ELSE)
  end
end
