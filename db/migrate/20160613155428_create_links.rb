class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :name
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
