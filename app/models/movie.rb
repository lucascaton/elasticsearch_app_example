class Movie < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  attr_accessible :name

  index_name "#{Tire::Model::Search.index_prefix}movies"

  mapping do
    indexes :name, boost: 10
  end
end
