class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :from_name
      t.string :name
      t.string :position
      t.integer :club_id
      t.string :manager_name
      t.integer :value
      t.integer :service_standard
      t.text :note
      t.string :from_email

      t.timestamps
    end
  end
end
