class User < ApplicationRecord
  validates :username, uniqueness: true

  def validate_user password
    return password == self.password
  end
end
