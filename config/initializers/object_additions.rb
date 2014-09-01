class String
  def to_bool
    return true if self == true || self =~ (/^(true|t|yes|y|1})$/)
    return false if self == false || self.blank? || self =~ (/^(false|f|no|n|0)$/)
  end
end
