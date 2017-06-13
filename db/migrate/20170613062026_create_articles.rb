class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :description
      t.text :text
      t.text :tags, array: true, default: []

      t.timestamps
    end
  end
end
