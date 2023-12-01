class AddUserRefToLikes < ActiveRecord::Migration[7.1]
  def change
    add_reference :likes, :user, null: false, foreign_key: true unless column_exists?(:likes, :user_id)
  end
end
