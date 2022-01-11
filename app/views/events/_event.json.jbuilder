json.extract! event, :id, :name, :long_name, :year, :description, :venue, :address, :city, :province, :country, :event_url, :start_date, :end_date, :all_day, :publish_on, :unpublish, :images,:logo,:files, :submission_faq, :submission_due_date, :speaker_notified_dat, :published, :feature, :internal, :speaker_id, :created_at, :updated_at
json.url event_url(event, format: :json)
