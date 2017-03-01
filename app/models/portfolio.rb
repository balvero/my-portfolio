class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail

  def self.python
    where(subtitle: 'Python')
  end

  scope :rails, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/640x480"
    self.thumbnail ||= "http://placehold.it/300x150"
  end
end