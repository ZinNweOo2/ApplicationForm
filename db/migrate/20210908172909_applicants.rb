class Applicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :profile_photo  
      t.date :dob  
      t.string :phone_no1
      t.string :phone_no2
      t.string :email 
      t.string :currnet_address
      t.string :hometown_address
      t.string :bachelor_university
      t.string :bachelor_year
      t.string :bachelor_degree
      t.string :master_university
      t.string :master_graduate_year
      t.string :master_degree
      t.string :deploma_name
      t.string :certificate
      t.text :internship_info
      t.integer :is_exist_job_exp
      t.text :job_experience
      t.string :english
      t.string :japan
      t.string :other
      t.text :career_skills
      t.string :programming  
      t.integer :total_exp_year
      t.text :comment
      
      t.timestamps
    end
  end
end
