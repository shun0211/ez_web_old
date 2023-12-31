# == Schema Information
#
# Table name: topics
#
#  id                :bigint           not null, primary key
#  name              :string(255)      not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  learning_stage_id :bigint           not null
#
# Indexes
#
#  index_topics_on_learning_stage_id  (learning_stage_id)
#
class Topic < ApplicationRecord
end
