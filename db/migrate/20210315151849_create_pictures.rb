class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.integer :user_id
      t.string :photo_url

      t.timestamps
    end
  end
end
