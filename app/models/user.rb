# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  firebase_uid :string(255)      not null
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class User < ApplicationRecord
end
