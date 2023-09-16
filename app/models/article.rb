class Article < ApplicationRecord
  validates :title, length: { maximum: 140 }, presence: true
  validates :text, length: { maximum: 4000 }, presence: true
  has_many :comments

  def subject
    title
  end
  
  def last_comment
    comments.last
  end

end
