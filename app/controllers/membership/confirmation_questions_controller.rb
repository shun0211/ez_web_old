class Membership::ConfirmationQuestionsController < MembershipController
  def index
    @confirmation_questions = ConfirmationQuestion
      .where(topic_id: params[:topic_id])
  end
end
