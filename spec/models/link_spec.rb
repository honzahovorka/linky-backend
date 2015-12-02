# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  url         :string
#  name        :string
#  description :text
#  position    :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_links_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe Link, type: :model do
  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :url }
  it { is_expected.to respond_to :description }
  it { is_expected.to respond_to :position }
  it { is_expected.to respond_to :user_id }
end
