require 'active_record'

class Building < ActiveRecord::Base
  validates :building_name, presence: true, uniqueness: { case_sensitive:false, message: "This building is already in the system"}
  validates :building_code, presence: true, uniqueness: { case_sensitive:false, message: "This building code is already in the system"}
end
