class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
#full_name
#returns the actor's full name 
def full_name
    "#{self.first_name} #{self.last_name}"
end

#list_roles
#returns a list of roles for the actor using the character name and show name 
def list_roles
    self.characters.map do |char|
        "#{char.name} - #{char.show.name}"
    end
end

end