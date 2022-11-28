class Network < ActiveRecord::Base
    has_many :shows
    #sorry
    # apologizes for passing on John Mulaney's Pilot
    def sorry
        "We're sorry about passing on John Mulaney's pilot"
    end
end
