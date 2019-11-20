# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true
  validates :comment, presence: true

  belongs_to :user
end
