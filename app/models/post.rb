class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, exclusion: {:in => ['too short']}
  validates :category, exclusion: {:in => ["Speculative Fiction"]}
end
