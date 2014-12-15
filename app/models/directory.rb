class Directory < ActiveRecord::Base
  belongs_to :server
  has_many :file_aliases
end
