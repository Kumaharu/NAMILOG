class AddLongitudeToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :longitude, :float
  end
end
