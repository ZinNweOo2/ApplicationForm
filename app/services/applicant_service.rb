class ApplicantService
    class << self
    
        def saveObjs(form)
            @is_save_form = ApplicantRepository.saveObjs(form)
        end
    end
end