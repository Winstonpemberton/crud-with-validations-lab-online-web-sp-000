class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :release_year}

end
