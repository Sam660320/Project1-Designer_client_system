class Project < ApplicationRecord
    belongs_to :designer, :optional => true
    belongs_to :client, :optional => true
end