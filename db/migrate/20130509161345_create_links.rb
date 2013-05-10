class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :source_url
      t.string :anchor_text
      t.integer :source_citation_flow
      t.integer :source_trust_flow
      t.date :first_indexed_date
      t.string :link_type
      t.string :link_sub_type
      t.string :target_url
      t.integer :target_citation_flow
      t.integer :target_trust_flow
      t.boolean :flag_redirect
      t.boolean :flag_frame
      t.boolean :flag_nofollow
      t.boolean :flag_images
      t.boolean :flag_deleted
      t.boolean :flag_alt_text
      t.date :last_seen_date
      t.boolean :flag_mention
      t.date :date_lost
      t.string :reason_lost

      t.timestamps
    end
  end
end
