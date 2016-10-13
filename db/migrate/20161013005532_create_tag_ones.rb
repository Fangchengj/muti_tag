class CreateTagOnes < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_ones do |t|
      t.string :name

      t.timestamps
    end
  end
end
