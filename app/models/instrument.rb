class Instrument < ActiveRecord::Base
    has_many :plays 
    has_many :artists, through: :plays
end 