class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.integer :feature_category_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
