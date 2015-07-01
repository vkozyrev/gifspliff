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
end
