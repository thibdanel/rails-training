class AddBirthdayToReview < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :birthday, :date
  end
end
