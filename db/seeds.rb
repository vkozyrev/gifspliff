# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  id            :integer          not null, primary key
#  child_gif_id  :integer
#  parent_gif_id :integer
#  frame_data    :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null

user_vkozyrev = User.create!(:username => 'vkozyrev', :email => 'kozyrevvladimir@gmail.com')
user_mantle = User.create!(:username => 'mantle', :email => 'mantle@gmail.com')

gif1 = Gif.create!(:frames => 12, :user => user_vkozyrev, :width => 640, :height => 800, :size => 123456789)
gif2 = Gif.create!(:frames => 13, :user => user_vkozyrev, :width => 640, :height => 800, :size => 223456789)
gif3 = Gif.create!(:frames => 14, :user => user_mantle, :width => 640, :height => 800, :size => 323456789)

gifpart1 = GifPart.create!(:child_gif_id => gif1.id, :parent_gif_id => gif2.id, :frame_data => "[1,2]")
gifpart2 = GifPart.create!(:child_gif_id => gif1.id, :parent_gif_id => gif3.id, :frame_data => "[2, 14]")