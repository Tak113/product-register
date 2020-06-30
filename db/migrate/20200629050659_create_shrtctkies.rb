class CreateShrtctkies < ActiveRecord::Migration[5.2]
  def change
    create_table :shrtctkies do |t|
      t.string :name
      t.string :key
      t.string :note

      t.timestamps
    end
  end
end
