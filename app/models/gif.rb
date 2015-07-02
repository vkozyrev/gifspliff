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
  has_many :parent_relations, :foreign_key => "child_gif_id", :class_name => "GifPart"
  has_many :child_relations, :foreign_key => "parent_gif_id", :class_name => "GifPart"
  has_many :parents, :through => :parent_relations
  has_many :children, :through => :child_relations
end
