class RegistrationsController < Devise::RegistrationsController

    def create
      

		#uploader.retrieve_from_store!('my_file.png')
		    
		flash[:error] = "Post successfully created"

		uploader = AvatarUploader.new
		uploader.store!(params[:avatar])

		puts params[:avatar]

		#redirect_to "/users/sign_up"

		super		
    end


  private

    def sign_up_params
      params.require(resource_name).permit(:email, :password, :password_confirmation, profile_attributes: [:first_name, :last_name, :avatar])
    end

end