class CreateMigration < ActiveRecord::Migration
  def self.up
     create_table "images", primary_key: "imageid", force: :cascade do |t|
	    t.string  "imageurl", limit: 200,                  null: false
	    t.integer "userid",   limit: 4,                    null: false
	    t.binary  "private",  limit: 1,   default: '0', null: false
	  end

	  add_index "images", ["userid"], name: "userid_idx", using: :btree

	  create_table "users", primary_key: "userid", force: :cascade do |t|
	    t.string "username",  limit: 45, null: false
	    t.string "firstname", limit: 45, null: false
	    t.string "lastname",  limit: 45, null: false
	  end
  end

  def self.down
  	drop_table :images
  	drop_table :users
    # drop all the tables if you really need
    # to support migration back to version 0
  end
end