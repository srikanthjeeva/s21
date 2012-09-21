class Product < ActiveRecord::Base

  default_scope :order => 'title'

  validates :title, :description, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true

  has_many :line_items
  has_many :orders, :through => :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  has_attached_file :photo,
     :styles => {
       :thumb=> "100x100#",
       :small  => "400x400>" }
  
  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors.add(:base, 'Line Items present' )
      return false
    end
  end

  def image_url
    photo.url(:thumb)
  end
end
