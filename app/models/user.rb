# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string
#  uid        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  belongs_to :gym
  has_many :spots
  has_many :spotters, through: :spots, source: :gym

  attr_accessor :remember_token, :activation_token, :reset_token, :uid, :email, :provider, :name, :location, :oauth_token, :oauth_expires_at

  def self.sign_in_from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.avatar   = auth.info.image
      user.location = auth.info.location
      user.email    = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save
    end
  end

    # def self.sign_in_from_omniauth(auth)
    #    create_user_from_omniauth(auth)
    # end
    #
    # def self.create_user_from_omniauth(auth)
    #   user = User.create(
    #   provider: auth['provider'],
    #   uid: auth['uid'],
    #   name: auth['name'],
    #   email: auth['email']
    #   )
    # end
    # User
  end
