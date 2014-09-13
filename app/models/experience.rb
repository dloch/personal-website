class Experience < ActiveRecord::Base
  scope :roots, -> { where(parent_id: -1) }

	def is_root?
		parent_id == -1
	end

  def children
    Experience.where(parent_id: id)
  end
end
