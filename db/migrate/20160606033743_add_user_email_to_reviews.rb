class AddUserEmailToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :user_email, :integer
  end
end
