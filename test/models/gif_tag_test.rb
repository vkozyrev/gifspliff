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

require 'test_helper'

class GifTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
