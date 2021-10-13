class Project < ApplicationRecord
  has_many :tasks, dependent: :delete_all
  belongs_to :user
  validates :title, presence: true
  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'complete']
  ]

  validates :phase, inclusion: { in: ['to-do', 'in-progress', 'completed'] }

    PHASE_OPTIONS = [['To-Do', 'to-do'],
                     ['In-Progress', 'in-progress'],
                     ['Completed', 'completed']]


    
end
