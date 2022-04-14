class Client < ApplicationRecord
    has_many :projects
    belongs_to :designer, :optional => true
end