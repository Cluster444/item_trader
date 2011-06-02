module ControllerMacros
  def login_admin
    before :each do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @admin = Factory(:admin)
      sign_in @admin
    end
  end

  def login_user
    before :each do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      @user = Factory(:user)
      sign_in @user
    end
  end
end
