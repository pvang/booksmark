class Bookmark < ActiveRecord::Base
  attr_accessible :dateSaved, :name, :url

  validates :name, :presence => true,
				   :length => { :maximum => 50 }

  validUrlExp = /^((https?|ftp):\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
  validates :url,  :format => { :with => validUrlExp },
                   :presence => true,
                   :uniqueness => { :case_sensitive => false }

end