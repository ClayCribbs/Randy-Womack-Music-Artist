class CreateStyleProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :style_profiles do |t|
      t.integer :col_width
      t.string :col_type
      t.integer :col_height
      t.integer :row_height
      t.integer :left_padding
      t.integer :right_padding
      t.integer :top_padding
      t.integer :bottom_padding
      t.integer :left_margin
      t.integer :right_margin
      t.integer :top_margin
      t.integer :bottom_margin
      t.string :special_style
      t.timestamps
    end
  end
end
