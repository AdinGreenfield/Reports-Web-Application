class Report < ApplicationRecord

  has_many :pages

  scope :sorted, lambda {order("report.position ASC")}

end
