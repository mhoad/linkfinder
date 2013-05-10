# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    source_url "MyString"
    anchor_text "MyString"
    source_citation_flow 1
    source_trust_flow 1
    first_indexed_date "2013-05-10"
    link_type "MyString"
    link_sub_type "MyString"
    target_url "MyString"
    target_citation_flow 1
    target_trust_flow 1
    flag_redirect false
    flag_frame false
    flag_nofollow false
    flag_images false
    flag_deleted false
    flag_alt_text false
    last_seen_date "2013-05-10"
    flag_mention false
    date_lost "2013-05-10"
    reason_lost "MyString"
  end
end
