class Fix2 < ActiveRecord::Migration[6.1]
  def change
    change_table :bookmarks do |t|
      t.remove :comment
      t.remove :movie_id
      t.remove :list_id

      t.string :comment
      t.references :movie, foreign_key: true
      t.references :list, foreign_key: true
    end
  end
end
