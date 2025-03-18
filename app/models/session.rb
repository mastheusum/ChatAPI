class Session < ApplicationRecord
  belongs_to :user
  
  def generate_access_token
    numb = 10000 + rand(10000)
    self.access_token = "#{numb}#{Time.now.strftime('%d%m%Y%S%M%H')}"
    self.save

    self.access_token
  end

  def current_user access_token
    return access_token == self.access_token
  end
end
