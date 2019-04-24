class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.text :content
      t.string :category
      t.integer :age
      t.integer :quality
      t.string :voice

      t.timestamps
    end
  end
end
