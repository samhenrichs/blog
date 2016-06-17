class AddPlaceToLinks < ActiveRecord::Migration
  def change
    add_column :links, :place, :integer
  end
end
