class CreateGambars < ActiveRecord::Migration
  def change
    create_table :gambars do |t|
      t.string :title
      t.string :path

      t.timestamps null: false
    end
  end
end
