class Book < ApplicationRecord

	# binding.pry

	has_attached_file :file

	# validates :file, attachment_presence: true
	validates_attachment :file,
    :content_type => { :content_type => ["application/zip", "application/x-zip", "text/csv", "application/vnd.ms-excel", "application/vnd.ms-office", "application/octet-stream", "text/aspx", "text/plain", "text/html"] }

	# validates_attachment_content_type :file, :content_type => ["application/octet-stream", "text/html", /\Atext\/.*\z/, "text/plain", "text/aspx"]

	# validates_attachment_file_name :file, matches: [/aspx\z/, /ascx\z/, /html\z/]

	# do_not_validate_attachment_file_type :file

end
