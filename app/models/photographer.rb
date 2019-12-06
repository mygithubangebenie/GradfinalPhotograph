class Photographer < ApplicationRecord
  belongs_to :gallery, optional: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  has_many :comments, dependent: :destroy
  validates :image, :video, presence: true
  def self.search(search, id)
      if search
        where(['name LIKE ?', "%#{search}%"])
      else
        where("name LIKE ?", "%#{name}%")
      end
     end


end
