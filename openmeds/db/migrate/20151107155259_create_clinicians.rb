class CreateClinicians < ActiveRecord::Migration
  def change
    create_table :clinicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :institution

      t.timestamps null: false
    end
  end
end
