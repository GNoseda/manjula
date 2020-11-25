class AddDateToFeed < ActiveRecord::Migration[6.0]
  def change
    add_column :feeds, :date, :datetime
  end
end
