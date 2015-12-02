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

class Link < ActiveRecord::Base
  belongs_to :user
end
