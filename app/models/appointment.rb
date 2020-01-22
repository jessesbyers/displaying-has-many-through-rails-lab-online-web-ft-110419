class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    # "January 11, 2016 at 20:20"
    def human_readable_datetime
        d = self.appointment_datetime
        d.strftime("%B %d, %Y at %R")
    end
end
