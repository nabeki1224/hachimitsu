class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.integer :user_id
      t.integer :mitsu_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
