class AddColumnToPicture < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :Caption, :string
  end
end
