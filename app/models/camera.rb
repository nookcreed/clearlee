class Camera < ActiveRecord::Base
  self.table_name = 'camera'
  self.per_page = 5
end