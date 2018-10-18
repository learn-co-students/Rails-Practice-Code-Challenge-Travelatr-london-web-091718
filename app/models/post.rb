class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination

  validates :title, uniqueness: true
end
