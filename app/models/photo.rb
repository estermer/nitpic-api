class Photo < ApplicationRecord
  belongs_to :album
  has_many :comments, dependent: :destroy
end
