class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.string :url
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
