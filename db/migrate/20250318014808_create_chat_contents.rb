class CreateChatContents < ActiveRecord::Migration[7.2]
  def change
    create_table :chat_contents do |t|
      t.string :chat
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
