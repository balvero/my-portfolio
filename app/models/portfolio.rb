class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail

  def self.python
    where(subtitle: 'Python')
  end

  scope :rails, -> {where(subtitle: 'Ruby on Rails')}
end