class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :profile_image
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}
  
  def favorited?(user)
   favorites.where(user_id: user.id).exists?
  end
  
end
