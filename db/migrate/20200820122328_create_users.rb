class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :initials
      t.string :first_name
      t.string :last_name
      t.string :name

      t.timestamps
    end
  end
end
