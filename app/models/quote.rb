class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maxinum => 140, :minimum => 3 }
	validates :author, :presence => true, :length => { :maxinum => 50, :minimum => 3 }

end
