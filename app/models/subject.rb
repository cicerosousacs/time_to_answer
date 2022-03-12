class Subject < ApplicationRecord
  has_many :questions

  #paginação kaminari
  paginates_per 10
end
