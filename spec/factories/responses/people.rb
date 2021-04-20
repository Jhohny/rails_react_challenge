FactoryBot.define do
  factory :people_successful, class: Hash do
    body do
      {
        "metadata": {
          "filtering": {},
          "paging": {
            "per_page": 25,
            "current_page": 1,
            "next_page": nil,
            "prev_page": nil
          },
          "sorting": {
            "sort_by": "updated_at",
            "sort_direction": "DESC NULLS LAST"
          }
        },
        "data": [
          {
            "id": 249340741,
            "created_at": "2020-01-10T15:44:04.134541-05:00",
            "updated_at": "2020-01-20T04:46:19.961197-05:00",
            "last_contacted_at": nil,
            "last_replied_at": nil,
            "first_name": "Steven",
            "last_name": "Pease",
            "display_name": "Steven Pease",
            "email_address": "sakatius@gmail.com",
            "full_email_address": "\"Steven Pease\" <sakatius@gmail.com>",
            "secondary_email_address": "sakatius@gmail.com",
            "personal_email_address": "sakatius@gmail.com",
            "phone": "7702354590",
            "phone_extension": nil,
            "home_phone": nil,
            "mobile_phone": nil,
            "linkedin_url": nil,
            "title": "Software Engineer",
            "city": "Atlanta",
            "state": "GA",
            "country": "United States",
            "work_city": nil,
            "work_state": nil,
            "work_country": nil,
            "crm_url": nil,
            "crm_id": nil,
            "crm_object_type": nil,
            "owner_crm_id": nil,
            "person_company_name": nil,
            "person_company_website": "http://gmail.com",
            "person_company_industry": nil,
            "do_not_contact": true,
            "bouncing": false,
            "locale": "US/Eastern",
            "eu_resident": false,
            "personal_website": nil,
            "twitter_handle": nil,
            "last_contacted_type": nil,
            "job_seniority": nil,
            "custom_fields": {},
            "tags": [],
            "contact_restrictions": [],
            "counts": {
              "emails_sent": 0,
              "emails_viewed": 0,
              "emails_clicked": 0,
              "emails_replied_to": 0,
              "emails_bounced": 0,
              "calls": 0
            },
            "account": nil,
            "owner": {
              "_href": "https://api.salesloft.com/v2/users/46818",
              "id": 46818
            },
            "last_contacted_by": nil,
            "import": nil,
            "person_stage": nil,
            "most_recent_cadence": nil,
            "last_completed_step_cadence": nil
          }
        ]
      }
    end

    initialize_with { ActiveSupport::HashWithIndifferentAccess.new(attributes) }
  end
end
