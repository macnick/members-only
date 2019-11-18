# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end
end
