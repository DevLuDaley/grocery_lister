class Item < ApplicationRecord
#class Item  < ActiveRecord::Base
    belongs_to :list #adds methods to my model
    validates :description, presence: true, length: { minimum: 2 }
    validates :description, uniqueness: true

end
 