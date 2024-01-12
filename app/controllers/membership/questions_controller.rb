class Membership::QuestionsController < MembershipController
  def index
    @topics = Topic.all.order(:created_at)
    @questions = Question.all.order(:created_at)
  end

  def new
    @question = Question.new
  end
end
