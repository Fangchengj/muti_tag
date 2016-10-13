class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.references :tag_one, foreign_key: true
      t.references :tag_two, foreign_key: true

      t.timestamps
    end
  end
end
