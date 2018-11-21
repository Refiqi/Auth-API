# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates_length_of :password, maximum: 72, minimum: 8, allow_nil: true, allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  before_validation do
    (self.email = email.to_s.downcase) && (self.username = username.to_s.downcase)
  end

  def can_modify_user?(user_id)
    role == 'admin' || id.to_s == user_id.to_s
  end

  def is_admin?
    role == 'admin'
  end
end
