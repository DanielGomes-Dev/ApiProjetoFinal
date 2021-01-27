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

ActiveRecord::Schema.define(version: 2021_01_27_014914) do

  create_table "can_lectures", force: :cascade do |t|
    t.integer "professor_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professor_id"], name: "index_can_lectures_on_professor_id"
    t.index ["subject_id"], name: "index_can_lectures_on_subject_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.date "calendar"
    t.string "subject_class"
    t.integer "quantity"
    t.integer "subject_id", null: false
    t.integer "professor_id", null: false
    t.integer "school_year_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professor_id"], name: "index_classrooms_on_professor_id"
    t.index ["school_year_id"], name: "index_classrooms_on_school_year_id"
    t.index ["subject_id"], name: "index_classrooms_on_subject_id"
  end

  create_table "professors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_professors_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "workload"
    t.string "knowledge_area"
    t.integer "school_year_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_year_id"], name: "index_subjects_on_school_year_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "rg"
    t.string "cpf"
    t.string "email"
    t.date "birthdate"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "state"
  end

  add_foreign_key "can_lectures", "professors"
  add_foreign_key "can_lectures", "subjects"
  add_foreign_key "classrooms", "professors"
  add_foreign_key "classrooms", "school_years"
  add_foreign_key "classrooms", "subjects"
  add_foreign_key "professors", "users"
  add_foreign_key "subjects", "school_years"
end
