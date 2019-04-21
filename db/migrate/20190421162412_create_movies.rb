class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :age
      t.string :quality
      t.string :voice

      t.timestamps
    end
  end
end
