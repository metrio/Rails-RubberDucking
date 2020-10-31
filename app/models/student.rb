class Student < ApplicationRecord
    has_many :ducks

    def ducks
        Duck.all.select {|duck| duck.student_id = self.id}
    end

end
