class CreateSearchSuggestings < ActiveRecord::Migration[5.2]
  def change
    create_table :search_suggestings do |t|
      t.string :term
      t.integer :popularity

      t.timestamps
    end
  end
end
