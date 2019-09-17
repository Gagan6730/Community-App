class CreateMarriedTos < ActiveRecord::Migration[5.2]
  def change
    create_table :married_tos do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
