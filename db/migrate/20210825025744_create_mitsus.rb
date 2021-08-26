class CreateMitsus < ActiveRecord::Migration[5.2]
  def change
    create_table :mitsus do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :level, default: 1
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
