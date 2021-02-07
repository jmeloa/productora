class Band < ApplicationRecord
    has_many :concerts, dependent: :destroy
    delegate :count, to: :concerts, prefix: true
    has_many :crews, dependent: :destroy
    delegate :count, to: :crews, prefix: true

    def sum_attendance
        concerts.sum(:Assistance)
    end
    
    def last_concert
        concerts.maximum(:created_at)
    end

    def concert_max_attendance
        concerts.maximum(:created_at)
    end
    
end
