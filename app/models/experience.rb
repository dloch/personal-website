class Experience < ActiveRecord::Base
	def is_root?
		parent_id == -1
	end
end
