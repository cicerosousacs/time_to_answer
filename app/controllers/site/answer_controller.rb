class Site::AnswerController < SiteController
  def question#viwer
    @answer = Answer.find(params[:answer_id])
  end
end
