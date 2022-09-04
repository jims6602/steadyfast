class CreateCorrectnesses < ActiveRecord::Migration[5.0]
  def change
    create_table :correctnesses do |t|
      t.references :dictionary, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :totalTryCount
      t.integer :rightCount

      t.timestamps
    end
  end
end
