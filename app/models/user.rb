# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  before_create :create_remember_token
  has_many :posts

  # Returns a random token.
  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.digest(User.new_token)
  end
end
