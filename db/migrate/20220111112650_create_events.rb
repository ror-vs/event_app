class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :long_name
      t.integer :year
      t.text :description
      t.string :venue
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :event_url
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :all_day
      t.datetime :publish_on
      t.datetime :unpublish
      t.string :submission_faq
      t.datetime :submission_due_date
      t.datetime :speaker_notified_dat
      t.boolean :published
      t.boolean :feature
      t.boolean :internal
      t.belongs_to :speaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
