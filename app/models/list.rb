class List < ApplicationRecord
#class List < ActiveRecord::Base
    has_many :items #adds methods to my model
    #validates :name, presence => true
    validates :name, presence: true
#validates :presence => :name
end
