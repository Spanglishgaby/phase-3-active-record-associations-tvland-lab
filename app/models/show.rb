class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
    #  #actors_list
    #    returns a list of the full names of each actor associated with the show 
    def actors_list
        self.actors.map do |actor|
            actor.full_name
        end
    end
end