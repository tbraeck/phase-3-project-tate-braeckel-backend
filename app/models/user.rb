class User < ActiveRecord::Base 
has_many :drawings, dependent: :destroy 

end