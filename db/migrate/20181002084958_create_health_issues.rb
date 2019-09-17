class CreateHealthIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :health_issues do |t|
      t.string :name

      t.timestamps
    end
  end
end
