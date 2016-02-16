# == Schema Information
#
# Table name: spotters
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  spot_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Spotter < ActiveRecord::Base
  belongs_to :user
  belongs_to :spot
end
