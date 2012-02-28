class CreateAchieverTable < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.integer     :user_id
      t.text        :description
      t.timestamps
    end

    add_index :achievements, :user_id
  end
end
