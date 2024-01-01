class Membership::ConfirmationQuestionsController < MembershipController
  def index
    @topic = Topic.find(params[:topic_id])
    @confirmation_questions = @topic.confirmation_questions.order(:id)
    @confirmation_answers_hashmap = @confirmation_questions.map do |confirmation_question|
      answer = if confirmation_question.confirmation_answers.find_by(user_id: current_user.id)
                  confirmation_question.confirmation_answers.find_by(user_id: current_user.id)
                else
                  confirmation_question.confirmation_answers.new(user_id: current_user.id)
                end
      { confirmation_question.id => answer}
    end
  end
end
