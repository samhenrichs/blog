class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :owner
      t.string :title
      t.string :name
      t.string :link
      t.string :ownerwebsite
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
