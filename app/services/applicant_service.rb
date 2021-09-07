class ApplicantService
    class << self
    
        def saveObjs(applicant)
            @is_save_form = ApplicantRepository.saveObjs(applicant)
        end
    end
end