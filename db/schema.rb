# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141123214640) do

  create_table "course_assignments", force: true do |t|
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.string   "schedule"
    t.integer  "hours_quantity"
    t.date     "init_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_assignments", ["course_id"], name: "index_course_assignments_on_course_id", using: :btree
  add_index "course_assignments", ["teacher_id"], name: "index_course_assignments_on_teacher_id", using: :btree

  create_table "course_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.integer  "course_type_id"
    t.integer  "grade_id"
    t.string   "name"
    t.float    "credits",        limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["course_type_id"], name: "index_courses_on_course_type_id", using: :btree
  add_index "courses", ["grade_id"], name: "index_courses_on_grade_id", using: :btree

  create_table "enrollments", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_assignment_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["course_assignment_id"], name: "index_enrollments_on_course_assignment_id", using: :btree
  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id", using: :btree

  create_table "grades", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "note_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "enrollment_id"
    t.integer  "note_type_id"
    t.float    "value",         limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["enrollment_id"], name: "index_notes_on_enrollment_id", using: :btree
  add_index "notes", ["note_type_id"], name: "index_notes_on_note_type_id", using: :btree

  create_table "students", force: true do |t|
    t.integer  "user_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["user_id"], name: "index_students_on_user_id", using: :btree

  create_table "teachers", force: true do |t|
    t.integer  "user_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id", using: :btree

  create_table "user_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "dni"
    t.string   "username"
    t.string   "password"
    t.integer  "user_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

end
