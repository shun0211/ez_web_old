# == Schema Information
#
# Table name: learning_stages
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class LearningStage < ApplicationRecord
end
