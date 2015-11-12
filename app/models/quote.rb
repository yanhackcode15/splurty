class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maxinum => 140, :minimum => 3 }
	validates :author, :presence => true, :length => { :maxinum => 50, :minimum => 3 }
	
	def unique_tag
		tag = ""
		self.author.split(" ").each do |name|
			tag+=name[0]
		end
		tag+="#"
		tag+="#{self.id.to_s}"
	end 
end
