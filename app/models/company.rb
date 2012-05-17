# == Schema Information
#
# Table name: companies
#
#  id          :integer         not null, primary key
#  ein         :string(255)
#  dba         :string(255)
#  city        :string(255)
#  state       :string(255)
#  status      :string(255)
#  country     :string(255)
#  status_desc :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  cn_id       :integer
#

class Company < ActiveRecord::Base
  
end
