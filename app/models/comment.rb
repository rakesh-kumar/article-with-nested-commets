# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string(255)
#  name       :string(255)
#  article_id :integer
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#

class Comment < ActiveRecord::Base
	belongs_to :article
	acts_as_tree order: 'created_at DESC'
end
