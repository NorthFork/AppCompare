class ChangeFeaturesDescToText < ActiveRecord::Migration
  def up
    change_column :features, :description, :text
  end

  def down
    change_column :features, :description, :string
  end
end
