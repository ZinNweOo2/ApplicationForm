# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_08_172909) do

  create_table "applicants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "profile_photo"
    t.date "dob"
    t.string "phone_no1"
    t.string "phone_no2"
    t.string "email"
    t.string "currnet_address"
    t.string "hometown_address"
    t.string "bachelor_university"
    t.string "bachelor_year"
    t.string "bachelor_degree"
    t.string "master_university"
    t.string "master_graduate_year"
    t.string "master_degree"
    t.string "deploma_name"
    t.string "certificate"
    t.text "internship_info"
    t.integer "is_exist_job_exp"
    t.text "job_experience"
    t.string "english"
    t.string "japan"
    t.string "other"
    t.text "career_skills"
    t.string "programming"
    t.integer "total_exp_year"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
