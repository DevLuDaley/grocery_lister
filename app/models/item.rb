class Item < ApplicationRecord
#class Item  < ActiveRecord::Base
    belongs_to :list #adds methods to my model
    validates :description, presence: true, length: { minimum: 2 }
    validates :description, uniqueness: true

    STATUS = {
        :incomplete => 0,
        :complete => 1
    }
    #use hash above to set up key 10:00 v3
    #clearly define meaning of #0 || #1 in context
    def complete?
        self.status == STATUS[:complete]    
        #self.status == 1
    end

    def incomplete?
        self.status == STATUS[:incomplete]
        #self.status == 0
    end

    def complete!
        self.status = STATUS[:complete]
        self.save
        #self.status == 0
    end

    def incomplete!
        self.status = STATUS[:incomplete]
        self.save
        #self.status == 0
    end


end