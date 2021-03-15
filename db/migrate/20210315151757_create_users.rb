class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :profile_photo_url
      t.string :bio

      t.timestamps
    end
  end
end
