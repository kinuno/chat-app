class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.timestamps
    end
  end
end

## room_users テーブル

# | Column | Type       | Options                        |
# | ------ | ---------- | ------------------------------ |
# | user   | references | null: false, foreign_key: true |
# | room   | references | null: false, foreign_key: true |