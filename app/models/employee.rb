class Employee < ActiveRecord::Base
  has_many :cards, ->(employee) { where name: employee.name }
end
