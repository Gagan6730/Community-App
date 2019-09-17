class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :city
      t.string :address
      t.string :gender
      t.string :title
      t.string :hobbies
      t.string :health_issues
      t.string :contacts
      t.string :profession
      t.string :married_to
      t.integer :gender_id
      t.integer :title_id
      t.integer :hobby_id
      t.integer :profession_id
      t.integer :married_to_id
      t.integer :health_issue_id


      t.timestamps
    end
  end
end
