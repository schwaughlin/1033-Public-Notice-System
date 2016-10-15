class Note < ApplicationRecord
  audited
  belongs_to :user
  belongs_to :equipment
  mount_uploader :attachment, AttachmentUploader
end
