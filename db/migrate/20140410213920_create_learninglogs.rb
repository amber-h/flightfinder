class CreateLearninglogs < ActiveRecord::Migration
  def up
    create_table :learninglogs do |t|
      t.text :content
      t.timestamps
    end
  end
  def down
    drop_table :learninglogs
  end
end
