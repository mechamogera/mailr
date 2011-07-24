class CreatePrefs < ActiveRecord::Migration
  def self.up
    create_table :prefs do |t|
      t.string :theme
      t.string :locale
	t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :prefs
  end
end
