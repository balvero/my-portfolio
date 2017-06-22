class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body

  mount_uploader :thumbnail, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  def self.python
    where(subtitle: 'Python')
  end

  def self.by_position
    order('position ASC')
  end

  scope :rails, -> {where(subtitle: 'Ruby on Rails')}

end