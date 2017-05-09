class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumbnail

  def self.python
    where(subtitle: 'Python')
  end

  def self.by_position
    order('position ASC')
  end

  scope :rails, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '640', width: '480')
    self.thumbnail ||= Placeholder.image_generator(height: '300', width: '300')
  end
end