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

class Task < ActiveRecord::Base
  has_many :photos, dependent: :destroy
  belongs_to :competition

  include AASM

  aasm do
    state :new, :initial => true
    state :analizing
    state :analized
    state :analize_stoped

    event :analizing do
      transitions :from => [:new, :loading, :loaded, :analizing, :analize_stoped], :to => :analizing
    end

    event :analized do
      transitions :from => [:new, :loading, :loaded, :analizing, :analized], :to => :analized
    end

    event :analize_stoped do
      transitions :from => [:analizing], :to => :analize_stoped
    end
  end
end
