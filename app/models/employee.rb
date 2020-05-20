class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, :title, uniqueness: true

    def get_name
        self.first_name.capitalize + " " + self.last_name.capitalize
    end

    def title_exist?
        
    end
end
