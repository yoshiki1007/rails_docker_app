class ApplicationRecord < ActiveRecord::Base
  # DBのwrite,readを分ける
  self.abstract_class = true
  connects_to database: { writing: :primary, reading: :primary_replica }
end
