# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  author     :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
end
