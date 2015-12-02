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
#  category_id :integer
#
# Indexes
#
#  index_links_on_category_id  (category_id)
#  index_links_on_user_id      (user_id)
#

class Link < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
end
