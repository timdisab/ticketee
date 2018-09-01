class Comment < ApplicationRecord
  belongs_to :ticket
  belongs_to :author, class_name: "User", optional: true
  scope :persisted, lambda { where.not(id: nil) }

  validates :text, presence: true
  delegate :project, to: :ticket
end
