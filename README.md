## Oldfield

# Photo

    $ rails generate scaffold Photos user:references photo_filename:string photo_date:date genus_species:string photo_notes:text
    $ bundle exec rake db:migrate


    $ rails generate migration AddCategoryToPhotos category:references
    $ bundle exec rake db:migrate

# Category

    $ rails generate scaffold Categories category_name:string category_description:text
    $ bundle exec rake db:migrate

    $ rails generate migration AddDiveBuddyToDived dive_buddy:integer
    $ bundle exec rake db:migrate

rails generate scaffold Dives organistion:string category_description:text dive_date:date dive_number:integer site_location:string latitude:decimal longitude:decimal vessel:string tide:string weather:string air_temperature:decimal water_temperature:decimal wind:string current:string visiability:decimal conditions:string dive_type:string breathing_medium:string environment:text equipment:text tasks:text role:string air_in:integer air_out:integer time_in:time time_out:time surface_swim:string wet_time:integer max_depth:integer bottom_time:integer no_decompression_limit:integer surface_interval:integer repeitive_factor:decimal effective_bottom_time:integer repetitive_group:string safety_stop:string user:references signed:boolean dive_coordinator:integer comments:text

rails generate migration AddTripToDives trip:references
bundle exec rake db:migrate

# Trips

rails generate scaffold Trips trip_name:string trip_organistion:string trip_category:string start_date:date end_date:date description:text

rails generate migration AddUDOToTrips trip:references udo:integer signed:boolean
bundle exec rake db:migrate


# Photo Category

    $ rails generate scaffold Photos_Categories photo:references category:references
    $ bundle exec rake db:migrate


    $ rails generate migration AddDiveToPhotos dive:references
    $ bundle exec rake db:migrate




# Setup

    $ git clone git@github.com:jmadin/ita.git
    $ git pull master origin
    $ bundle update
    $ bundle exec rake db:migrate RAILS_ENV="production"
    $ rake tmp:clear
    $ bundle exec rake assets:precompile RAILS_ENV=production RAILS_GROUPS=assets
    $ rails s -e production -p 3009

# Production

    $ bundle exec rake db:migrate RAILS_ENV="production"
    $ rake tmp:clear
    $ bundle exec rake assets:precompile RAILS_ENV=production RAILS_GROUPS=assets
    $ rails s -e production -p 3003

delete from photos;
delete from sqlite_sequence where name='photos';


Photo.new({:user_id => 1, :photo_filename => "test", :photo_date => "2014-07-01", :genus_species => "", :photograph => File.new("/Users/jmadin/Desktop/test.png", "r")}).save





.mode insert 
.header on 
.out trimodal.sql 
select * from dives where trip_id=10;


