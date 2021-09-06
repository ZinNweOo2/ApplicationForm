class Applicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.string :name
      t.date :apply_date
      t.integer :blacklist_status
      t.string :profile_photo
      t.string :correct_image_type
      t.integer :total_exp_year
      t.text :comment
      t.integer :status
      t.date :dob
      t.string :phone_no1
      t.string :phone_no2
      t.string :currnet_address
      t.string :hometown_address
      t.string :email
      t.string :university
      t.string :bachelor_university
      t.string :bachelor_year
      t.string :bachelor_degree
      t.string :degree
      t.string :graduated_year
      t.string :certificate
      t.text :internship_info
      t.integer :is_exist_job_exp
      t.text :job_experience
      t.text :language_skills
      t.text :career_skills
      t.string :deploma_name
      t.string :master_university
      t.string :master_degree
      t.string :master_graduate_year
      t.string :english
      t.string :japan
      t.string :other
      t.string :programming
      t.string :language
      t.string :level
  
      t.timestamps
    end
  end
end
