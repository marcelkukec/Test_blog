class AddScheduleForToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :scheduled_for, :datetime, default: DateTime.now
  end
end
