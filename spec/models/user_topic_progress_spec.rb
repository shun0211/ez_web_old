# == Schema Information
#
# Table name: user_topic_progresses
#
#  id         :bigint           not null, primary key
#  progress   :integer          default(0), not null
#  status     :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_topic_progresses_on_topic_id  (topic_id)
#  index_user_topic_progresses_on_user_id   (user_id)
#
require 'rails_helper'

RSpec.describe UserTopicProgress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
