# == Schema Information
#
# Table name: identities
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Identity < OmniAuth::Identity::Models::ActiveRecord
end
