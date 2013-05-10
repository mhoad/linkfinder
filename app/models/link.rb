class Link < ActiveRecord::Base
  attr_accessible :anchor_text, :date_lost, :first_indexed_date, :flag_alt_text, :flag_deleted, :flag_frame, 
  :flag_images, :flag_mention, :flag_nofollow, :flag_redirect, :last_seen_date, :link_sub_type, :link_type, 
  :reason_lost, :source_citation_flow, :source_trust_flow, :source_url, :target_citation_flow, :target_trust_flow, 
  :target_url

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
  		
  		#Logger Info for debugging purposes
  		#logger.info row.to_hash

  		Link.create!(:source_url => row[0], :anchor_text => row[1], :source_citation_flow => row[2], 
  					 :source_trust_flow => row[3], :first_indexed_date => row[4], :link_type => row[5],
  					 :link_sub_type => row[6], :target_url => row[7], :target_citation_flow => row[8],
  					 :target_trust_flow => row[9], :flag_redirect => row[10], :flag_frame => row[11],
  					 :flag_nofollow => row[12], :flag_images => row[13], :flag_deleted => row[14],
  					 :flag_alt_text => row[15], :last_seen_date => row[16], :flag_mention => row[17],
  					 :date_lost => row[18])
  	end
  end
end
