class RemoveManagedCompanyFromCompany < ActiveRecord::Migration
  def up
    remove_column :companies, :managed_company_id
      end

  def down
    add_column :companies, :managed_company_id, :string
  end
end
