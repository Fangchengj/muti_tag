class CreateTagTwos < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_twos do |t|
      t.string :name
      t.references :tag_one, foreign_key: true

      t.timestamps
    end
  end
end
