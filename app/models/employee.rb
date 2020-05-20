class Employee < ApplicationRecord
    belongs_to :dog


    validates :alias, {uniqueness: true}
    validates_uniqueness_of :title, :allow_blank => true


end
