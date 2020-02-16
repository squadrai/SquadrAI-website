class UpdateSubscribersTableConstraints < ActiveRecord::Migration[6.0]
  def change
    add_index(:subscribers, :email, unique: true)
    change_column_null(:subscribers, :created_at, null: false)
    change_column_null(:subscribers, :updated_at, null: false)

    change_table :subscribers do |t|
      t.boolean :unsubscribe, default: false
    end
  end
end
