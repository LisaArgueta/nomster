class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  
  validates_presence_of :name, :address, :description
  validates_length_of :name, minimum: 4

  geocoded_by :address
  after_validation :geocode
end
