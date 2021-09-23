class UserPreferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :preferences, :user
  end
end
