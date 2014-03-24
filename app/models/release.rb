class Release < ActiveRecord::Base

	 has_attached_file :pdf,
            :url  => "/assets/pdfs/:id/:style/:basename.:extension",
           :path => ":rails_root/public/assets/pdfs/:id/:style/:basename.:extension",
  					:default_url => "app/assets/images/pdfs/:style/missing.pdf"

    validates :pdf, :attachment_presence => true        
    validates_attachment_content_type :pdf, :content_type => ["application/pdf", "text/plain"],  :if => :pdf_attached?

	  # do_not_validate_attachment_file_type :pdf

  	has_one :user, :through => :user_release
  	has_one :user_release


    def pdf_attached?
  	  self.pdf.file?
    end 
end
