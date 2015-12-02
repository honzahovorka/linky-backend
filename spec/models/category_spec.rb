# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :description }

  it { is_expected.to have_many :links }
end
