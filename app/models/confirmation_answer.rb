# == Schema Information
#
# Table name: confirmation_answers
#
#  id                       :bigint           not null, primary key
#  answer                   :text(65535)      not null
#  correct                  :boolean
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  confirmation_question_id :bigint           not null
#  user_id                  :bigint           not null
#
# Indexes
#
#  index_confirmation_answers_on_confirmation_question_id  (confirmation_question_id)
#  index_confirmation_answers_on_user_id                   (user_id)
#
class ConfirmationAnswer < ApplicationRecord
  belongs_to :confirmation_question
  belongs_to :user

  validates :answer, presence: true
  validates :correct, inclusion: { in: [true, false] }
end
