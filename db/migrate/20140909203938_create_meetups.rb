class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |table|
      table.string :name, null: false #this makes sure that this won't be left blank.
      table.text :description, null: false
      table.string :location,null: false
      table.timestamps #this will make sure that the time will be related to the event, and that it will be updated if edited.
    end
  end
end

#after seeting up the database (this was created with 'rake db:create_migration NAME=create_meetup'), it is good to
#do a 'rake db:migrate' and also a 'db:rollback' to make sure you can undo your changes.
