class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    def actors_list
        self.characters.map {|c| Actor.find_by(id: c.actor_id).full_name}
    end
end