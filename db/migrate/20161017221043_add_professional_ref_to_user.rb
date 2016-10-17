class AddProfessionalRefToUser < ActiveRecord::Migration[5.0]
  def change
  	add_reference :users, :professional, index: true
  end
end
