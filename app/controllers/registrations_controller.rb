class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(resource_name).permit(:email, :password, :password_confirmation, profile_attributes: [:first_name, :last_name])
    end

end