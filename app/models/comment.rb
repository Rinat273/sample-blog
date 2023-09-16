class Comment < ApplicationRecord
  validates :body, length: { maximum: 4000 }, presence: true  
  
  belongs_to :article
end
