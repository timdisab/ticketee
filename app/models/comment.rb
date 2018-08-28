class Comment < ApplicationRecord
  belongs_to :ticket
  belongs_to :author

  validates :text, presence: true
end
