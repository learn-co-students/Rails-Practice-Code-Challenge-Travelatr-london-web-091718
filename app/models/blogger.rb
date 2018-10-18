class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, uniqueness: true
  validates :age, numericality: {minimum: 1}
  validates :bio, length: {minimum: 30}

  def total_likes
    likes = 0
    Post.all.each do |p|
      if self.id == p.blogger_id
        likes += p.likes
      end
    end
    likes
  end

  def featured_post
    like = 0
    post = "None have been liked"
    Post.all.each do |p|
      if self.id == p.blogger_id
        if p.likes > like
          like = p.likes
          post = p
        end
      end
      end
    post
  end

end
