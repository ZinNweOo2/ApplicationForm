class ApplicantRepository
      # @return [<Type>] <users>
    class << self

      def saveObjs(form)
        @is_save_form = form.save
      end
    end
end