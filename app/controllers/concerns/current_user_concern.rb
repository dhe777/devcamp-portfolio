module CurrentUserConcern
  extend ActiveSupport::Concern
  
  def current_user
    super || guest_user
    end

    def guest_user
      OpenStruct.new(name: "Guest Guest", 
                     first_name: "Guest", 
                     lastname: "Guest", 
                     email: "Welcome@guest.com")
    end
  end