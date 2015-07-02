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

class Gif < ActiveRecord::Base
  belongs_to :user
  has_one :parent_relation, :foreign_key => "child_gif_id", :class_name => "GifPart"
  has_many :child_relations, :foreign_key => "parent_gif_id", :class_name => "GifPart"
  has_one :parent, :through => :parent_relation
  has_many :children, :through => :child_relations
end
