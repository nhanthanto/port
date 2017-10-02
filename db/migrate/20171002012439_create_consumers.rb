class CreateConsumers < ActiveRecord::Migration[5.1]
  def change
    create_table :consumers do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
