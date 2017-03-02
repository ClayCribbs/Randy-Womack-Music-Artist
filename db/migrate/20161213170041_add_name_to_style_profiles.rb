class AddNameToStyleProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :style_profiles, :name, :string
  end
end
