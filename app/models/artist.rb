class Artist < ActiveRecord::Base
 has_many :plays 
 has_many :instruments, through: :plays
end
