class Link < ApplicationRecord
  AVAILABLE_LETTERS = Array('a'..'z')

  # before_validation :generate_url
  before_create :generate_url

  validates :url, presence: true
  # validates :tiny_url, uniqueness: true

  scope :by_tiny_url, ->(tiny_url) { where(tiny_url: tiny_url) }
  scope :ordered_by_clicks, -> { order(clicks: :desc) }

  private

  def generate_url
    self.tiny_url = Array.new(5) { AVAILABLE_LETTERS.sample }.join
    true
  end
end
