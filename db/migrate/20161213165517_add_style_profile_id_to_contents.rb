class AddStyleProfileIdToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :style_profile_id, :integer
  end
end
