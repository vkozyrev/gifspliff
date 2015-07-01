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
  belongs_to :tag
  belongs_to :gif
end
