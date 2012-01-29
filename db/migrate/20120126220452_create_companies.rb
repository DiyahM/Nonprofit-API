class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :ein
      t.string :dba
      t.string :city
      t.string :state
      t.string :status
      t.string :country
      t.string :status_desc

      t.timestamps
    end
  end
end
