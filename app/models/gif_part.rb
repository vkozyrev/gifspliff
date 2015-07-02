# == Schema Information
#
# Table name: gif_parts
#
#  id            :integer          not null, primary key
#  child_gif_id  :integer
#  parent_gif_id :integer
#  frame_data    :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class GifPart < ActiveRecord::Base
  belongs_to :parent, :foreign_key => "parent_gif_id", :class_name => "Gif", :inverse_of => :parent_relations
  belongs_to :child, :foreign_key => "child_gif_id", :class_name => "Gif", :inverse_of => :child_relations
end
