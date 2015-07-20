# == Schema Information
#
# Table name: competitions
#
#  id         :integer          not null, primary key
#  link       :string
#  avatar     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Competition < ActiveRecord::Base
  validates :avatar, :link, :name, presence: true
  has_many :tasks, dependent: :destroy
end
