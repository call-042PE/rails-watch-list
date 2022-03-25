class Addlisttomovies < ActiveRecord::Migration[6.1]
  def change
    change_table :movies do |t|
      t.references :list, foreign_key: true
    end
  end
end
