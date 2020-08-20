class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name, limit: 255
      t.string :secret

      t.timestamps
    end
    add_index :organizations, :secret, unique: true
  end
end
