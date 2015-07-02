# == Schema Information
#
# Table name: gif_tags
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  gif_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GifTag < ActiveRecord::Base
  belongs_to :tag, :foreign_key => "tag_id", :class_name => "Tag", :inverse_of => :gif_relations
  belongs_to :gif, :foreign_key => "gif_id", :class_name => "Gif", :inverse_of => :tag_relations
end
