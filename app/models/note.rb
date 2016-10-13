class Note < ApplicationRecord
  belongs_to :user
  belongs_to :equipment
  mount_uploader :attachment, AttachmentUploader
end
