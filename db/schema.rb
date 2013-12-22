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

ActiveRecord::Schema.define(version: 20131222092406) do

  create_table "answers", force: true do |t|
    t.integer  "question_id", limit: 8,                   null: false
    t.integer  "user_id",     limit: 8,                   null: false
    t.datetime "created"
    t.text     "answer",                                  null: false
    t.string   "status",      limit: 32, default: "open"
  end

  create_table "badge_definitions", force: true do |t|
    t.string  "type",              limit: 45
    t.string  "name",              limit: 128
    t.string  "description",       limit: 512
    t.string  "image",             limit: 45
    t.string  "created",           limit: 45
    t.integer "reputation_points"
  end

  create_table "badges", force: true do |t|
    t.datetime "created"
    t.integer  "user_id"
    t.integer  "badge_definition_id"
  end

  create_table "brands", force: true do |t|
    t.string "name"
  end

  create_table "camera", force: true do |t|
    t.string   "brand",                     limit: 32
    t.string   "model_name",                limit: 64
    t.string   "mpn",                       limit: 32
    t.string   "upc_code",                  limit: 32
    t.string   "asin",                      limit: 32
    t.string   "amzn_url",                  limit: 512
    t.string   "amzn_img_url",              limit: 512
    t.float    "amzn_price",                limit: 8
    t.date     "announced_date"
    t.string   "price_range",               limit: 32
    t.text     "executive_summary"
    t.string   "ae_bracketing",             limit: 256
    t.string   "aperture_priority",         limit: 16
    t.string   "articulated_lcd",           limit: 16
    t.string   "autofocus",                 limit: 512
    t.integer  "battery_life_cipa"
    t.string   "battery_description",       limit: 128
    t.string   "battery",                   limit: 512
    t.string   "body_type",                 limit: 64
    t.string   "built_in_flash",            limit: 128
    t.string   "continuous_drive",          limit: 128
    t.float    "fps",                       limit: 6
    t.string   "custom_white_balance",      limit: 512
    t.string   "digital_zoom",              limit: 16
    t.integer  "digital_zoom_x"
    t.string   "dimensions",                limit: 128
    t.float    "effective_megapixels",      limit: 6
    t.string   "environmentally_sealed",    limit: 128
    t.string   "exposure_compensation",     limit: 128
    t.string   "external_flash",            limit: 128
    t.string   "flash_modes",               limit: 512
    t.float    "flash_range_mts",           limit: 6
    t.string   "focal_length_equiv",        limit: 16
    t.integer  "focal_length_min"
    t.integer  "focal_length_max"
    t.float    "focal_length_multiplier",   limit: 6
    t.string   "format",                    limit: 128
    t.string   "gps_notes",                 limit: 512
    t.string   "gps",                       limit: 128
    t.string   "hdmi",                      limit: 16
    t.string   "iso",                       limit: 128
    t.integer  "iso_min"
    t.integer  "iso_max"
    t.string   "image_ratio_w_h",           limit: 16
    t.string   "image_stabilization_notes", limit: 128
    t.string   "image_stabilization",       limit: 16
    t.string   "jpeg_quality_levels",       limit: 256
    t.string   "lens_mount",                limit: 128
    t.string   "live_view",                 limit: 128
    t.integer  "macro_focus_range_cm"
    t.string   "manual_exposure_mode",      limit: 16
    t.string   "manual_focus",              limit: 16
    t.string   "max_resolution",            limit: 16
    t.string   "maximum_aperture",          limit: 16
    t.float    "max_aperture_zoomout",      limit: 6
    t.float    "max_aperture_zoomin",       limit: 6
    t.string   "maximum_shutter_speed",     limit: 16
    t.float    "max_shutter",               limit: 6
    t.string   "metering_modes",            limit: 256
    t.string   "microphone",                limit: 16
    t.string   "minimum_shutter_speed",     limit: 16
    t.float    "min_shutter",               limit: 8
    t.integer  "normal_focus_range_cms"
    t.string   "number_of_focus_points",    limit: 32
    t.integer  "optical_zoom"
    t.string   "orientation_sensor",        limit: 16
    t.string   "other_resolutions",         limit: 256
    t.string   "processor",                 limit: 128
    t.string   "remote_control",            limit: 16
    t.string   "video_resolutions",         limit: 256
    t.string   "full_hd",                   limit: 16
    t.float    "full_hd_fps",               limit: 6
    t.string   "screen_dots",               limit: 16
    t.float    "screen_size",               limit: 6
    t.string   "screen_type",               limit: 128
    t.string   "self_timer",                limit: 128
    t.string   "sensor_photo_detectors",    limit: 16
    t.string   "sensor_size",               limit: 128
    t.string   "sensor_size_type",          limit: 128
    t.float    "sensor_size_w_mm",          limit: 8
    t.float    "sensor_size_h_mm",          limit: 8
    t.string   "sensor_type",               limit: 128
    t.string   "shutter_priority",          limit: 16
    t.string   "speaker",                   limit: 128
    t.string   "storage_included",          limit: 256
    t.string   "storage_types",             limit: 256
    t.string   "subject_scene_modes",       limit: 512
    t.string   "timelapse_recording",       limit: 128
    t.string   "touch_screen",              limit: 128
    t.string   "usb",                       limit: 128
    t.string   "uncompressed_format",       limit: 32
    t.text     "videography_notes"
    t.string   "viewfinder_coverage",       limit: 16
    t.float    "viewfinder_magnification",  limit: 6
    t.string   "viewfinder_type",           limit: 128
    t.string   "wb_bracketing",             limit: 256
    t.integer  "weight_inc_batteries_gms"
    t.integer  "white_balance_presets"
    t.string   "wireless",                  limit: 512
    t.datetime "created"
    t.float    "rating",                    limit: 8
    t.boolean  "discontinued"
  end

  add_index "camera", ["price_range"], name: "PRICE_RANGE", using: :btree
  add_index "camera", ["rating"], name: "RATING", using: :btree

  create_table "camera_data", force: true do |t|
    t.string "name",           limit: 512
    t.text   "specifications"
  end

  add_index "camera_data", ["name"], name: "name_UNIQUE", unique: true, using: :btree

  create_table "comments", force: true do |t|
    t.integer  "question_id", null: false
    t.string   "name",        null: false
    t.string   "email",       null: false
    t.text     "text",        null: false
    t.datetime "created",     null: false
    t.integer  "user_id"
  end

  create_table "entities", force: true do |t|
    t.integer "entity_id",                null: false
    t.string  "title",       limit: 1024
    t.text    "description"
    t.string  "type",        limit: 45
  end

  create_table "expert_profiles", force: true do |t|
    t.integer "user_id",                         null: false
    t.string  "description",        limit: 1024
    t.text    "areas_of_expertise"
    t.text    "achievements"
    t.text    "recommendations"
  end

  create_table "groups", force: true do |t|
    t.string   "name",     limit: 100, null: false
    t.datetime "created"
    t.datetime "modified"
  end

  create_table "lens", force: true do |t|
    t.string   "brand",                    limit: 32
    t.string   "model_name",               limit: 64
    t.string   "mpn",                      limit: 32
    t.string   "upc_code",                 limit: 32
    t.string   "asin",                     limit: 32
    t.string   "amzn_url",                 limit: 512
    t.string   "amzn_img_url",             limit: 512
    t.float    "amzn_price",               limit: 8
    t.date     "announce_date"
    t.string   "price_range",              limit: 32
    t.text     "executive_summary"
    t.string   "lens_type",                limit: 256
    t.string   "max_format_size",          limit: 256
    t.integer  "focal_length_min"
    t.integer  "focal_length_max"
    t.string   "image_stabilization",      limit: 32
    t.string   "lens_mount",               limit: 256
    t.float    "maximum_aperture_zoomout", limit: 6
    t.float    "maximum_aperture_zoomin",  limit: 6
    t.float    "minimum_aperture_zoomin",  limit: 6
    t.float    "minimum_aperture_zoomout", limit: 6
    t.string   "aperture_ring",            limit: 64
    t.integer  "diaphragm_blades"
    t.string   "aperture_notes",           limit: 512
    t.integer  "elements"
    t.integer  "groups"
    t.string   "special",                  limit: 256
    t.string   "minimum_focus",            limit: 32
    t.float    "minimum_focus_inch",       limit: 6
    t.string   "autofocus",                limit: 32
    t.string   "motor_type",               limit: 64
    t.string   "full_time_manual",         limit: 64
    t.string   "focus_method",             limit: 128
    t.string   "distance_scale",           limit: 64
    t.string   "dof_scale",                limit: 64
    t.integer  "weight_gms"
    t.integer  "diameter_mm"
    t.integer  "length_mm"
    t.string   "materials",                limit: 512
    t.string   "sealing",                  limit: 32
    t.string   "color",                    limit: 128
    t.string   "zoom_method",              limit: 256
    t.integer  "filter_thread_mm"
    t.string   "filter_notes",             limit: 256
    t.string   "hood_supplied",            limit: 64
    t.string   "hood_product_code",        limit: 128
    t.string   "tripod_collar",            limit: 64
    t.string   "optional_accessories",     limit: 256
    t.text     "discontinued",             limit: 255, null: false
    t.datetime "created"
  end

  add_index "lens", ["asin"], name: "asin", unique: true, using: :btree
  add_index "lens", ["model_name"], name: "model_name", unique: true, using: :btree

  create_table "lens_data", force: true do |t|
    t.text   "specifications"
    t.string "name",           limit: 512, null: false
  end

  add_index "lens_data", ["name"], name: "name_UNIQUE", unique: true, using: :btree

  create_table "meta_answers", force: true do |t|
    t.integer "question_id",                null: false
    t.integer "meta_question_id", limit: 8, null: false
    t.integer "option",           limit: 2, null: false
  end

  add_index "meta_answers", ["question_id", "meta_question_id"], name: "meta_qa", unique: true, using: :btree

  create_table "meta_questions", force: true do |t|
    t.string "title",     limit: 512,  null: false
    t.text   "question",               null: false
    t.string "opt1",      limit: 1024, null: false
    t.string "opt2",      limit: 1024, null: false
    t.string "opt3",      limit: 1024, null: false
    t.string "opt4",      limit: 1024, null: false
    t.string "opt1_info", limit: 1024, null: false
    t.string "opt2_info", limit: 1024, null: false
    t.string "opt3_info", limit: 1024, null: false
    t.string "opt4_info", limit: 1024, null: false
  end

  create_table "meta_relations", force: true do |t|
    t.integer "meta_question_id",        limit: 8, null: false
    t.integer "meta_option",             limit: 2, null: false
    t.integer "follow_meta_question_id", limit: 8, null: false
  end

  create_table "paypal_ipns", force: true do |t|
    t.string   "pay_key"
    t.integer  "sell_file_id"
    t.boolean  "valid",                                                    default: false, null: false
    t.string   "notify_version",                              limit: 64
    t.string   "verify_sign",                                 limit: 127
    t.boolean  "test_ipn"
    t.string   "address_city",                                limit: 40
    t.string   "address_country",                             limit: 64
    t.string   "address_country_code",                        limit: 2
    t.string   "address_name",                                limit: 128
    t.string   "address_state",                               limit: 40
    t.string   "address_status",                              limit: 20
    t.string   "address_street",                              limit: 200
    t.string   "address_zip",                                 limit: 20
    t.string   "first_name",                                  limit: 64
    t.string   "last_name",                                   limit: 64
    t.string   "payer_business_name",                         limit: 127
    t.string   "payer_email",                                 limit: 127
    t.string   "payer_id",                                    limit: 13
    t.string   "payer_status",                                limit: 20
    t.string   "contact_phone",                               limit: 20
    t.string   "residence_country",                           limit: 2
    t.string   "business",                                    limit: 127
    t.string   "item_name",                                   limit: 127
    t.string   "item_number",                                 limit: 127
    t.string   "quantity",                                    limit: 127
    t.string   "receiver_email",                              limit: 127
    t.string   "receiver_id",                                 limit: 13
    t.string   "custom"
    t.string   "invoice",                                     limit: 127
    t.string   "memo",                                        limit: 1000
    t.string   "option_name1",                                limit: 64
    t.string   "option_name2",                                limit: 64
    t.string   "option_selection1",                           limit: 200
    t.string   "option_selection2",                           limit: 200
    t.float    "tax",                                         limit: 10
    t.string   "auth_id",                                     limit: 19
    t.string   "auth_exp",                                    limit: 28
    t.integer  "auth_amount"
    t.string   "auth_status",                                 limit: 20
    t.integer  "num_cart_items"
    t.string   "parent_txn_id",                               limit: 19
    t.string   "payment_date",                                limit: 28
    t.string   "payment_status",                              limit: 20
    t.string   "payment_type",                                limit: 10
    t.string   "pending_reason",                              limit: 20
    t.string   "reason_code",                                 limit: 20
    t.integer  "remaining_settle"
    t.string   "shipping_method",                             limit: 64
    t.float    "shipping",                                    limit: 10
    t.string   "transaction_entity",                          limit: 20
    t.string   "txn_id",                                      limit: 19
    t.string   "txn_type",                                    limit: 20
    t.float    "exchange_rate",                               limit: 10
    t.string   "mc_currency",                                 limit: 3
    t.float    "mc_fee",                                      limit: 10
    t.float    "mc_gross",                                    limit: 10
    t.float    "mc_handling",                                 limit: 10
    t.float    "mc_shipping",                                 limit: 10
    t.float    "payment_fee",                                 limit: 10
    t.float    "payment_gross",                               limit: 10
    t.float    "settle_amount",                               limit: 10
    t.string   "settle_currency",                             limit: 3
    t.string   "auction_buyer_id",                            limit: 64
    t.string   "auction_closing_date",                        limit: 28
    t.integer  "auction_multi_item"
    t.string   "for_auction",                                 limit: 10
    t.string   "subscr_date",                                 limit: 28
    t.string   "subscr_effective",                            limit: 28
    t.string   "period1",                                     limit: 10
    t.string   "period2",                                     limit: 10
    t.string   "period3",                                     limit: 10
    t.float    "amount1",                                     limit: 10
    t.float    "amount2",                                     limit: 10
    t.float    "amount3",                                     limit: 10
    t.float    "mc_amount1",                                  limit: 10
    t.float    "mc_amount2",                                  limit: 10
    t.float    "mc_amount3",                                  limit: 10
    t.string   "recurring",                                   limit: 1
    t.string   "reattempt",                                   limit: 1
    t.string   "retry_at",                                    limit: 28
    t.integer  "recur_times"
    t.string   "username",                                    limit: 64
    t.string   "password",                                    limit: 24
    t.string   "subscr_id",                                   limit: 19
    t.string   "case_id",                                     limit: 28
    t.string   "case_type",                                   limit: 28
    t.string   "case_creation_date",                          limit: 28
    t.boolean  "log_default_shipping_address_in_transaction"
    t.string   "action_type",                                 limit: 25,                   null: false
    t.string   "ipn_notification_url",                        limit: 64,                   null: false
    t.string   "charset",                                     limit: 25,                   null: false
    t.string   "transaction_type",                            limit: 25,                   null: false
    t.string   "cancel_url",                                  limit: 64,                   null: false
    t.string   "sender_email",                                limit: 127,                  null: false
    t.string   "fees_payer",                                  limit: 25,                   null: false
    t.string   "return_url",                                  limit: 64,                   null: false
    t.boolean  "reverse_all_parallel_payments_on_error"
    t.string   "status",                                      limit: 25,                   null: false
    t.datetime "payment_request_date",                                                     null: false
    t.string   "ip",                                          limit: 16
    t.text     "raw",                                                                      null: false
    t.datetime "created"
    t.datetime "modified"
  end

  add_index "paypal_ipns", ["pay_key"], name: "pay_key", using: :btree

  create_table "paypal_items", force: true do |t|
    t.string   "paypal_ipn_id", limit: 36,  null: false
    t.string   "item_name",     limit: 127
    t.string   "item_number",   limit: 127
    t.string   "quantity",      limit: 127
    t.float    "mc_gross",      limit: 10
    t.float    "mc_shipping",   limit: 10
    t.float    "mc_handling",   limit: 10
    t.float    "tax",           limit: 10
    t.datetime "created",                   null: false
    t.datetime "modified",                  null: false
  end

  create_table "questions", force: true do |t|
    t.integer  "parent_id", limit: 8,  default: 0,      null: false
    t.integer  "user_id",   limit: 8,                   null: false
    t.text     "question",                              null: false
    t.datetime "created"
    t.string   "status",    limit: 32, default: "open", null: false
    t.integer  "owner",     limit: 8,  default: 0,      null: false
    t.integer  "budget",    limit: 2,  default: 100,    null: false
    t.integer  "owner_id"
  end

  create_table "questions_tags", id: false, force: true do |t|
    t.integer "question_id", limit: 8, null: false
    t.integer "tag_id",      limit: 8, null: false
  end

  create_table "search_index", force: true do |t|
    t.string   "association_key", limit: 36,         null: false
    t.string   "model",           limit: 128,        null: false
    t.text     "data",            limit: 2147483647, null: false
    t.datetime "created",                            null: false
    t.datetime "modified",                           null: false
  end

  add_index "search_index", ["association_key", "model"], name: "association_key", using: :btree
  add_index "search_index", ["data"], name: "data", type: :fulltext

  create_table "tags", force: true do |t|
    t.string   "tag",      limit: 256, null: false
    t.string   "category", limit: 256, null: false
    t.string   "type",     limit: 256, null: false
    t.datetime "created",              null: false
    t.datetime "modified",             null: false
  end

  create_table "users", force: true do |t|
    t.string    "facebook_id",        limit: 1024,                 null: false
    t.string    "twitter_id",         limit: 1024,                 null: false
    t.string    "email",              limit: 1024,                 null: false
    t.string    "password",           limit: 1024,                 null: false
    t.string    "first_name",         limit: 256,                  null: false
    t.string    "last_name",          limit: 256,                  null: false
    t.date      "date_of_birth"
    t.string    "location",           limit: 1024,                 null: false
    t.integer   "sex",                limit: 2
    t.text      "bio"
    t.boolean   "is_verified_email",               default: false
    t.string    "user_type",          limit: 32,                   null: false
    t.timestamp "updated_on",                                      null: false
    t.timestamp "created_on",                                      null: false
    t.string    "friendly_url",       limit: 1024,                 null: false
    t.integer   "group_id",                        default: 1,     null: false
    t.integer   "reputation"
    t.string    "password_confirm",   limit: 1024
    t.string    "profile_image_path", limit: 1024
    t.string    "slug",               limit: 1024
    t.string    "tokenhash",          limit: 1024
  end

end
