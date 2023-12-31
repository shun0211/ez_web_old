class Membership::TopicsController < MembershipController
  def index
    @topics = Topic.all
  end
end
