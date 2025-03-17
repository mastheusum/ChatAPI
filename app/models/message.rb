class Message < ApplicationRecord
  def self.add_message(chat, user, message)
    File.open("#{chat}.txt", 'a') do |f|
      f.write "#{user}: #{message}"
    end
  end
end
