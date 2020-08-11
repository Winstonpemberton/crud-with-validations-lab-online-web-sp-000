class Song < ApplicationRecord
  validates :title, uniqueness: { scope: :release_year}
  
end
