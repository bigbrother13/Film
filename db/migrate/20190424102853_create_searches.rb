class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.text :cotent
      t.string :category
      t.integer :age
      t.string :quality
      t.string :voice

      t.timestamps
    end
  end
end
