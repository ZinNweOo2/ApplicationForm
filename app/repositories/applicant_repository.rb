class ApplicantRepository
    class << self

      def saveObjs(applicant)
        @is_save_form = applicant.save
      end
    end
end