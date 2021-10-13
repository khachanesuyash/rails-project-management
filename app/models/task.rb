class Task < ApplicationRecord
  has_many :subtasks, dependent: :delete_all
  belongs_to :project
  belongs_to :user
  belongs_to :phase
  has_many :comments, dependent: :delete_all

  has_many_attached :featured_image

  accepts_nested_attributes_for :project, :user

  validates :priority, inclusion: { in: ['low', 'medium', 'high', 'urgent'] }

  PRIORITY_OPTIONS = [['Low', 'low'],
                      ['Medium', 'medium'],
                      ['High', 'high'],
                      ['Urgent', 'urgent']]
  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not Started', 'not-started'],
    ['In Progress', 'in-progress'],
    ['Complete', 'complete']
  ]

  validates :phase_id, inclusion: { in: [1, 2, 3] }

    PHASE_OPTIONS = [['To-Do', 1],
                     ['In-Progress', 2],
                     ['Completed', 3]]

  # def badge_color
  #   case phase_id
  #     when 1
  #       'secondary'
  #     when 2
  #       'info'
  #     when 3
  #       'success'
  #   end
  # end
end
