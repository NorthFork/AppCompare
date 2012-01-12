class ChangeAppsDescToText < ActiveRecord::Migration
  def up
    change_column :apps, :description, :text
  end

  def down
    change_column :apps, :description, :string
  end
end
