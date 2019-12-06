class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers do |t|
      t.date :upload_date
      t.string :image
      t.string :description
      t.string :video
      t.references :gallery, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
