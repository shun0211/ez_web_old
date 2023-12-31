# == Schema Information
#
# Table name: topics
#
#  id             :bigint           not null, primary key
#  learning_stage :integer
#  name           :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Topic < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  enum learning_stage: { basic: 0, advanced: 1, portfolio: 2, interviewing: 3 }
end
