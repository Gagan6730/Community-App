class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :number
      t.integer :member_id

      t.timestamps
    end
  end
end
