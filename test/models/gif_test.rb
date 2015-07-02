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
#  width      :integer
#  height     :integer
#  size       :integer
#

require 'test_helper'

class GifTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
