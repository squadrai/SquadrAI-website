class CreateSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :company

      t.timestamps
    end
  end
end
