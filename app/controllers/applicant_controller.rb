class ApplicantController < ApplicationController

  def form
    @applicant = Applicant.new
    
  end
  
  def confirm
      # render plain: params[:applicant][:name]
      @applicant = Applicant.new(form_params) 
      
      if @applicant.valid?
        if params[:applicant][:is_exist_job_exp] =="1"
          is_exist_job_exp = 1
        else
          @is_exist_job_exp = 0
        end
        # render plain: form_params
        img_name = params[:applicant][:profile_photo].original_filename
        user_name = params[:applicant][:name]
        path = File.join("app","assets","images",user_name+img_name)
        @file_path = user_name+img_name
        File.open(path,"wb") { |f| f.write(params[:applicant][:profile_photo].read) }           
        
        if !File.extname(params[:applicant][:profile_photo]).eql?(".png")&&
          !File.extname(params[:applicant][:profile_photo]).eql?(".jpg")&&
          !File.extname(params[:applicant][:profile_photo]).eql?(".jpeg")

          flash[:notice] ="*Profile Photo should be image type.*"
          render :form
        end
      else
        render :form
      end     
  end
  def confirmForm
    if !defined?(@applicant)
      redirect_to root_path
    end
  end
  
  def save
    # render plain: save_params
    @applicant = Applicant.new(save_params) 
    @is_save_form = ApplicantService.saveObjs(@applicant)
  end

  private
   def form_params
      @name= params[:applicant][:name]
      @profile_photo= params[:applicant][:profile_photo]
      @dob= params[:applicant][:dob]
      @phone_no1= params[:applicant][:phone_no1]
      @phone_no2= params[:applicant][:phone_no2]
      @email= params[:applicant][:email]
      @currnet_address= params[:applicant][:currnet_address]
      @hometown_address= params[:applicant][:hometown_address]
      @bachelor_university= params[:applicant][:bachelor_university]
      @bachelor_year = params[:applicant][:bachelor_year]
      @bachelor_degree = params[:applicant][:bachelor_degree]
      @master_university= params[:applicant][:master_university]
      @master_graduate_year= params[:applicant][:master_graduate_year]
      @master_degree= params[:applicant][:master_degree]
      @deploma_name= params[:applicant][:deploma_name]
      @certificate= params[:applicant][:certificate]     
      @internship_info = params[:applicant][:internship_info]
      @is_exist_job_exp = params[:applicant][:is_exist_job_exp]
      @job_experience = params[:applicant][:job_experience]
      @total_exp_year =params[:applicant][:total_exp_year]
      @english = params[:applicant][:english]
      @japan = params[:applicant][:japan]
      @other = params[:applicant][:other]
      @comment = params[:applicant][:comment]
      @programming = params[:applicant][:programming]
     
        @programming.each do |p|
          @pro = @pro.to_s + (" "+p[:language] +"  :  " + p[:level] + ",").to_s
        end
        @program = @pro.delete_suffix(',')
        

      params = ActionController::Parameters.new({
      obj:{
        name: @name,
        profile_photo:@profile_photo,
        dob:@dob,
        phone_no1:@phone_no1,
        phone_no2:@phone_no2,
        email:@email,
        currnet_address:@currnet_address,
        hometown_address:@hometown_address,
        bachelor_university:@bachelor_university,
        bachelor_year:@bachelor_year,
        bachelor_degree:@bachelor_degree,
        master_university:@master_university,
        master_graduate_year: @master_graduate_year,
        master_degree:@master_degree,
        deploma_name:@deploma_name,
        certificate:@certificate,  
        english:@english,
        japan:@japan,
        other:@other,   
        is_exist_job_exp:@is_exist_job_exp ,
        internship_info:@internship_info,
        job_experience:@job_experience,
        total_exp_year:@total_exp_year,
        comment:@comment,
        programming:@program
          
      }
        })
        params.require(:obj).permit(:name,:profile_photo,:dob,:phone_no1,:phone_no2,:email,:currnet_address,:hometown_address,:bachelor_university,:bachelor_year,:bachelor_degree,:master_university,:master_graduate_year,:master_degree,:deploma_name,:certificate,:internship_info,:job_experience,:total_exp_year,:comment,:programming,:english,:japan,:other)
        
    end

  private
  def save_params
    params.require(:applicant).permit(:name,:profile_photo,:dob,:phone_no1,:phone_no2,:email,:currnet_address,:hometown_address,:bachelor_university,:bachelor_year,:bachelor_degree,:master_university,:master_graduate_year,:master_degree,:deploma_name,:certificate,:internship_info,:job_experience,:total_exp_year,:comment,:programming,:english,:japan,:other)
  end

end
