class CreateMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :messages do |t|
      t.string :receive_message

      t.timestamps
    end
  end
end
