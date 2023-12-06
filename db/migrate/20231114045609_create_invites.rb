class CreateInvites < ActiveRecord::Migration[7.1]
  def change
    create_table :invites do |t|
      t.integer :status
      t.references :event, null: false, foreign_key: true
      t.references :host, null: false, foreign_key: { to_table: :users }
      t.references :guest, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
