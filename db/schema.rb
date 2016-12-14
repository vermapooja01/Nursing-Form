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

ActiveRecord::Schema.define(version: 20161212224853) do

  create_table "submissions", force: :cascade do |t|
    t.string   "patient_initials"
    t.integer  "age"
    t.string   "gender"
    t.string   "admitting_primary_medical_diagnosis"
    t.integer  "user_id"
    t.datetime "week"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "best_eye_opening_response"
    t.string   "best_verbal_response"
    t.string   "best_motor_response"
    t.integer  "patient_total_score"
    t.string   "glasgow_coma_score_quality"
    t.string   "gag_reflex"
    t.string   "speech"
    t.string   "hearing"
    t.string   "face"
    t.string   "tongue"
    t.string   "strength"
    t.string   "weakness"
    t.string   "contracture"
    t.string   "flaccid"
    t.string   "spastic"
    t.string   "paresis"
    t.string   "other"
    t.string   "marital_status"
    t.string   "affect"
    t.string   "spiritual_needs"
    t.string   "social_support"
    t.string   "advanced_directive"
    t.string   "resuscitation_status"
    t.text     "comments"
    t.string   "ventilation"
    t.string   "string"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "kind"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "user_name"
    t.string   "email"
  end

end
