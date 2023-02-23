class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
  validates :poster_url, presence: true, defaut: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kmmCTY2BjrMc1MOjdKyHw2N9ra0.jpg"
end
