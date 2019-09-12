class Submission < ApplicationRecord
    mount_uploader :submission_image, SubmissionImageUploader
    belongs_to :user

    validates :title, presence: true
    validates :body, length: { maximum: 8000 }
    validates :url, url: true, allow_blank: true

end
