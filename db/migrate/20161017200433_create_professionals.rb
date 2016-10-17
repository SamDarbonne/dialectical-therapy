class CreateProfessionals < ActiveRecord::Migration[5.0]
  def change
    create_table :professionals do |t|
      t.text :user_name
      t.text :first_name
      t.text :last_name
      t.text :email
      t.string :password_digest

      t.timestamps
    end
  end
end
