# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  authentication_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do

  it { is_expected.to respond_to :email }
  it { is_expected.to respond_to :encrypted_password }
  it { is_expected.to respond_to :authentication_token }

  context '#ensure_authentication_token' do
    it 'generates authentication_token for newly created user' do
      user = build(:user)
      expect(user.authentication_token).to be_nil
      user.save
      expect(user.authentication_token).not_to be_nil
    end
  end

end
