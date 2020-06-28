class AddUserIdToPolaroids < ActiveRecord::Migration[6.0]
  def change
    add_column :polaroids, :user_id, :integer
  end
end
