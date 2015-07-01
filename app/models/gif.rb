# == Schema Information
#
# Table name: gifs
#
#  id         :integer          not null, primary key
#  frames     :integer
#  gif_blob   :binary
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gif < ActiveRecord::Base
  belongs_to :user
end
