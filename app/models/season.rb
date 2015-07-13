# == Schema Information
#
# Table name: seasons
#
#  id         :integer          not null, primary key
#  year       :string
#  win        :integer
#  draw       :integer
#  lose       :integer
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Season < ActiveRecord::Base
end
