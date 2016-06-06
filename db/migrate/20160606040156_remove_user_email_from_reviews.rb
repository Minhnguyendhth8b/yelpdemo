class RemoveUserEmailFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :user_email, :integer
  end
end
