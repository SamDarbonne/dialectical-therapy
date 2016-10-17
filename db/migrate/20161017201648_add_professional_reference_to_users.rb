class AddProfessionalReferenceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :professional, foreign_key: true
  end
end
