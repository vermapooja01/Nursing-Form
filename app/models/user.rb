class User < ApplicationRecord
  def self.from_sso(utepse, utepsa)
    #store user information from single sign on into variable
    sso_user = UTEPSSO.authenticate(utepse, utepsa)
    #look for user. if doesn't exist create user
    user = User.find_or_initialize_by(:user_name => sso_user[:user_name])
# => {:user_name, :full_name, :email_address, :authenticated, :role_value, :external_user, :@xmlns}
    user.first_name = sso_user[:full_name].split(' ').first
    user.last_name = sso_user[:full_name].split(' ', 2).last
    user.kind = user.calculate_role(sso_user[:role_value])
    user.user_name = sso_user[:user_name]
    user.email = sso_user[:email]
    # Save the user object
    user.save
    return user
  end

  def calculate_role(role_value)
    kind = ""
    if role_value == 2
      kind = 'student'
    elsif role_value == 4
      kind = 'faculty'
    elsif role_value == 8
      kind = 'staff'
    end
    return kind
  end
end
