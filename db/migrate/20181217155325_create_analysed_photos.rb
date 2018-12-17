class CreateAnalysedPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :analysed_photos do |t|
      t.references :user, foreign_key: true
      t.string :photoUri
      t.string :labels

      t.timestamps
    end
  end
end
