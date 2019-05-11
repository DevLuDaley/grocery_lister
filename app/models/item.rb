class Item < ApplicationRecord
#class Item  < ActiveRecord::Base
    belongs_to :list #adds methods to my model
end
