class User < ApplicationRecord
  validates :username, uniqueness: true

  has_many :chat_contents, class_name: "ChatContent", foreign_key: "user_id"

  def validate_user password
    return password == self.password
  end

end
