class CreateBeforeAfterData < ActiveRecord::Migration[5.0]
  def change
    create_table :before_after_data do |t|
      t.references :user
      t.integer :before
      t.integer :after

      t.timestamps
    end
  end
end
