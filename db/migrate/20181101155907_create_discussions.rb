class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
