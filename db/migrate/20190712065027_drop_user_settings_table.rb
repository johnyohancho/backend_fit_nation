class DropUserSettingsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :user_settings
  end
end
