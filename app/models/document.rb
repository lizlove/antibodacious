class Document < ActiveRecord::Base

  has_attached_file :pdf
  # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
