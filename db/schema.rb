# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_17_131427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_technologies", force: :cascade do |t|
    t.bigint "blog_id", null: false
    t.bigint "technology_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blog_id"], name: "index_blog_technologies_on_blog_id"
    t.index ["technology_id"], name: "index_blog_technologies_on_technology_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.text "summary"
    t.string "date"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "education_skills", force: :cascade do |t|
    t.bigint "education_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["education_id"], name: "index_education_skills_on_education_id"
    t.index ["skill_id"], name: "index_education_skills_on_skill_id"
  end

  create_table "education_technologies", force: :cascade do |t|
    t.bigint "education_id", null: false
    t.bigint "technology_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["education_id"], name: "index_education_technologies_on_education_id"
    t.index ["technology_id"], name: "index_education_technologies_on_technology_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "end_date"
    t.string "title"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "experience_skills", force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["experience_id"], name: "index_experience_skills_on_experience_id"
    t.index ["skill_id"], name: "index_experience_skills_on_skill_id"
  end

  create_table "experience_technologies", force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.bigint "technology_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["experience_id"], name: "index_experience_technologies_on_experience_id"
    t.index ["technology_id"], name: "index_experience_technologies_on_technology_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "title"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.index ["user_id"], name: "index_links_on_user_id"
  end

  create_table "project_technologies", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "technology_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_technologies_on_project_id"
    t.index ["technology_id"], name: "index_project_technologies_on_technology_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "address"
    t.string "github"
    t.text "summary"
    t.bigint "user_id", null: false
    t.boolean "deployed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_skills_on_user_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_technologies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.text "bio"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.text "tech_bio"
  end

  add_foreign_key "blog_technologies", "blogs"
  add_foreign_key "blog_technologies", "technologies"
  add_foreign_key "blogs", "users"
  add_foreign_key "education_skills", "educations"
  add_foreign_key "education_skills", "skills"
  add_foreign_key "education_technologies", "educations"
  add_foreign_key "education_technologies", "technologies"
  add_foreign_key "educations", "users"
  add_foreign_key "experience_skills", "experiences"
  add_foreign_key "experience_skills", "skills"
  add_foreign_key "experience_technologies", "experiences"
  add_foreign_key "experience_technologies", "technologies"
  add_foreign_key "experiences", "users"
  add_foreign_key "links", "users"
  add_foreign_key "project_technologies", "projects"
  add_foreign_key "project_technologies", "technologies"
  add_foreign_key "projects", "users"
  add_foreign_key "skills", "users"
  add_foreign_key "technologies", "users"
end
