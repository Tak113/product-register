class CreateShellscripts < ActiveRecord::Migration[5.2]
  def change
    create_table :shellscripts do |t|
      t.string :app
      t.string :key
      t.string :note

      t.timestamps
    end
  end
end
