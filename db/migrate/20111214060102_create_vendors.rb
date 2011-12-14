class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :phone
      t.string :contact

      t.timestamps
    end
  end
end
