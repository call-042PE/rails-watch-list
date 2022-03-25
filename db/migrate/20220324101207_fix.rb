class Fix < ActiveRecord::Migration[6.1]
  def change
    change_table :bookmarks do |t|
      t.remove :comment

      t.string :comment
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
    end
  end
end
