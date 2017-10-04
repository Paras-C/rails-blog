class Comment < ApplicationRecord
  belongs_to :post
  validates :commenter_name, :comment_body, presence: true
  validates :commenter_name, length: { minimum: 2, maximum: 20 }
  validates :comment_body, exclusion: { in: %w(boring), message: "Please do not use negative language!"}
end
