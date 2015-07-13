# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  logo       :string
#  name       :string
#  task_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
end
