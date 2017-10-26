class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, :primary_key => :user_id do |t|
      t.string :user_name
      t.timestamps
    end
  end
end
