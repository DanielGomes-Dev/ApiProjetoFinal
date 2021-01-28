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

ActiveRecord::Schema.define(version: 2021_01_28_150336) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "complement"
    t.string "city"
    t.string "state"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "school_year_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_year_id"], name: "index_appointments_on_school_year_id"
    t.index ["subject_id"], name: "index_appointments_on_subject_id"
  end

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

  create_table "coordinators", force: :cascade do |t|
    t.string "registration"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "type_coordinator"
    t.index ["user_id"], name: "index_coordinators_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "knowledge_area"
    t.integer "code"
    t.string "campus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "knowledge_area"
    t.integer "code"
    t.string "campus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "coordinator_id", null: false
    t.index ["coordinator_id"], name: "index_departments_on_coordinator_id"
  end

  create_table "get_grades", force: :cascade do |t|
    t.integer "grade_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grade_id"], name: "index_get_grades_on_grade_id"
    t.index ["student_id"], name: "index_get_grades_on_student_id"
  end

  create_table "grades", force: :cascade do |t|
    t.float "grade"
    t.integer "student_id", null: false
    t.integer "subject_id", null: false
    t.integer "professor_id", null: false
    t.integer "classroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_grades_on_classroom_id"
    t.index ["professor_id"], name: "index_grades_on_professor_id"
    t.index ["student_id"], name: "index_grades_on_student_id"
    t.index ["subject_id"], name: "index_grades_on_subject_id"
  end

  create_table "launch_grades", force: :cascade do |t|
    t.integer "professor_id", null: false
    t.integer "grade_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grade_id"], name: "index_launch_grades_on_grade_id"
    t.index ["professor_id"], name: "index_launch_grades_on_professor_id"
  end

  create_table "matriculates", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "classroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_matriculates_on_classroom_id"
    t.index ["student_id"], name: "index_matriculates_on_student_id"
  end

  create_table "professors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_professors_on_user_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.integer "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subject_id"], name: "index_requirements_on_subject_id"
  end

  create_table "school_years", force: :cascade do |t|
    t.integer "year"
    t.integer "semester"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "registration", null: false
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "workload"
    t.string "knowledge_area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "semester"
    t.integer "department_id", null: false
    t.index ["department_id"], name: "index_subjects_on_department_id"
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
  end

  create_table "workers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_workers_on_user_id"
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "appointments", "school_years"
  add_foreign_key "appointments", "subjects"
  add_foreign_key "can_lectures", "professors"
  add_foreign_key "can_lectures", "subjects"
  add_foreign_key "classrooms", "professors"
  add_foreign_key "classrooms", "school_years"
  add_foreign_key "classrooms", "subjects"
  add_foreign_key "coordinators", "users"
  add_foreign_key "departments", "coordinators"
  add_foreign_key "get_grades", "grades"
  add_foreign_key "get_grades", "students"
  add_foreign_key "grades", "classrooms"
  add_foreign_key "grades", "professors"
  add_foreign_key "grades", "students"
  add_foreign_key "grades", "subjects"
  add_foreign_key "launch_grades", "grades"
  add_foreign_key "launch_grades", "professors"
  add_foreign_key "matriculates", "classrooms"
  add_foreign_key "matriculates", "students"
  add_foreign_key "professors", "users"
  add_foreign_key "requirements", "subjects"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "users"
  add_foreign_key "subjects", "departments"
  add_foreign_key "workers", "users"
end
