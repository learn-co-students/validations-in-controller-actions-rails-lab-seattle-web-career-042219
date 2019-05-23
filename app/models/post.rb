class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: {in: %w(Non-Fiction Fiction)}
  validates :content, length: {minimum: 20}
end
