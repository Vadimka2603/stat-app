# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  aasm_state  :string
#  competition :string
#  start_date  :integer
#  finish_date :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ActiveRecord::Base
end
