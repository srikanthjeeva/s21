# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


Product.create(:title => 'Wheat',
:description =>
%{<p>
This is Wheat
</p>},
:image_url => '/images/wheat.jpg',
:price => 51.50)

Product.create(:title => 'Rice',
:description =>
%{<p>
This is Rice
</p>},
:image_url => '/images/rice.jpg',
:price => 49.50)


Product.create(:title => 'Dal',
:description =>
%{<p>
This is Dhal
</p>},
:image_url => '/images/Dal.jpg',
:price => 49.50)
