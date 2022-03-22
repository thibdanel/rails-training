class AddFieldToCasque < ActiveRecord::Migration[6.1]
  def change
    add_column :casques, :address, :string
  end
end
