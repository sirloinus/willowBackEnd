class CreateMarkers < ActiveRecord::Migration[5.2]
  def change
    create_table :markers do |t|
      t.references :user, foreign_key: true
      t.float :latitude, :precision => 15, :scale => 10
      t.float :longitude, :precision => 15, :scale => 10
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
