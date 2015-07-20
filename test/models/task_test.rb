# == Schema Information
#
# Table name: tasks
#
#  id             :integer          not null, primary key
#  aasm_state     :string
#  start_date     :integer
#  finish_date    :integer
#  competition_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
