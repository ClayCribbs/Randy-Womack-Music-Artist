class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :content_type
      t.string :content_background
      t.string :content_special

      t.timestamps
    end
  end
end
