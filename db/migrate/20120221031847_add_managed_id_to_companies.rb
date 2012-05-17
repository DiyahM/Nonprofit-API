class AddManagedIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :managed_company_id, :integer

  end
end
