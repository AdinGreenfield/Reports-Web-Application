class Report < ApplicationRecord

  has_many :pages

  scope :sorted, lambda {order("first_name ASC")}

end
