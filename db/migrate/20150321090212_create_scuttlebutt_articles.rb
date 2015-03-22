class CreateScuttlebuttArticles < ActiveRecord::Migration
  def change
    create_table :scuttlebutt_articles do |t|
      t.string :title
      t.string :slug
      t.datetime :published_at
      t.text :body

      t.timestamps null: false
    end
  end
end
