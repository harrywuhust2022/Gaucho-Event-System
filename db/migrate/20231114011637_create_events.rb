class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.string :category
      t.datetime :date

      t.timestamps
    end
  end
end
