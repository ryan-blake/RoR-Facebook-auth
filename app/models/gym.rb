# == Schema Information
#
# Table name: gyms
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  city       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gym < ActiveRecord::Base
  has_many :users
  has_many :spots
  has_many :spotters, through: :spots
end
