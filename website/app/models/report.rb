class Report < ApplicationRecord

  has_many :pages

  scope :sorted, lambda {order("reports.position ASC")}
  
end
