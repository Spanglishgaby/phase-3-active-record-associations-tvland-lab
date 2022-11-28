class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
    #  #say_that_thing_you_say
    #    returns a string with the character's name and catchphrase 
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
end