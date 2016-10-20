class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :first_name
      t.text :last_name
      t.text :email
      t.string :password_digest

      t.timestamps
    end

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
    add_reference :events, :user, foreign_key: true
  end
end
