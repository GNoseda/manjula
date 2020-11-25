class CreateFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.float :cantidad
      t.integer :time
      t.belongs_to :baby, null: false, foreign_key: true

      t.timestamps
    end
  end
end
