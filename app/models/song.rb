class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :release_year}
  validates :released, inclusion: { in: %w(true false)}

  with_options if: :is_released?, length: { minimum: 50 } do
  validates :content, if: -> { content.present? }

  def is_released?
  self.released
end
end
