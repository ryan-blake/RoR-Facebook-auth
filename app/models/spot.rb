# == Schema Information
#
# Table name: spots
#
#  id         :integer          not null, primary key
#  title      :string
#  weight     :integer
#  time       :integer
#  body       :string
#  user_id    :integer
#  gym_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Spot < ActiveRecord::Base
  belongs_to :user
  belongs_to :gym
end
