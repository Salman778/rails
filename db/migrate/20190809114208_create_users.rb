class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, unique: true, null: false , limit: 254
      t.string :first_name, null: false , limit: 254
      t.string :last_name, null: false , limit: 254

      t.timestamps
    end
  end
end
