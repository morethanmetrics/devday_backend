class CreateOrganizationsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.boolean :idp_admin

      t.timestamps
    end
  end
end
