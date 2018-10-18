class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def most_recent

    destination_posts = []
    Post.all.each do |p|
      if p.destination_id == self.id
        destination_posts << p
      end
    end
    destination_posts
    # destination_posts.sort_by { |p| p.updated_at}
  end

  
end
