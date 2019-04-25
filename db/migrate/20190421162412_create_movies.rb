class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :age
      t.boolean :quality
      t.boolean :voice

      t.timestamps
    end
  end
end
