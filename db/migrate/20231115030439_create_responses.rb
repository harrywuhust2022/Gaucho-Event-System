class CreateResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :responses do |t|
      t.string :message
      t.boolean :result
      t.references :responser, null: false, foreign_key: {to_table: :users}
      t.references :event, null: false, foreign_key: true
      t.references :receiver, null: false, foreign_key: {to_table: :users}
      t.references :invite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
