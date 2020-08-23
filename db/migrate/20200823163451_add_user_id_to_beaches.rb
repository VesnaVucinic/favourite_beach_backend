class AddUserIdToBeaches < ActiveRecord::Migration[6.0]
  def change
    add_reference :beaches, :user, null: false, foreign_key: true
  end
end
