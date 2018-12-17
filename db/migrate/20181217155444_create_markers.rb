class CreateMarkers < ActiveRecord::Migration[5.2]
  def change
    create_table :markers do |t|
      t.references :user, foreign_key: true
      t.integer :latitude
      t.integer :longitude
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
