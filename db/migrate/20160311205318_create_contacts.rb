class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    enable_extension "hstore"
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :location
      t.integer :number_of_connections
      t.string :country
      t.string :industry
      t.text :summary

      t.hstore :projects, array: true
      t.hstore :education, array: true
      t.hstore :group, array: true

      t.string :picture
      t.string :linkedin_url
      t.string :websites, array: true, default: []
      t.string :languages, array: true, default: []
      t.string :skills, array: true, default: []

      t.hstore :certifications, array: true
      t.hstore :organizations, array: true

      t.hstore :past_companies, array: true
      t.hstore :current_companies, array: true
      t.hstore :recommended_visitors, array: true

      t.references :project
      t.timestamps
    end
  end
end
