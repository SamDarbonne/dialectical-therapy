class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :behavior
      t.text :trigger
      t.integer :before
      t.text :before_notes
      t.integer :after
      t.text :after_notes
      t.boolean :distraction
      t.boolean :soothing
      t.boolean :improving
      t.text :helpful
      t.text :hurtful
      t.text :reflection
      t.text :victory

      t.timestamps
    end
  end
end
