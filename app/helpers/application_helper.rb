module ApplicationHelper
  def menu_buttons
    if current_user
      return(link_to('New Event', new_event_path, class: "mr-3 btn btn-primary text-nowrap") + link_to("Logout", logout_path, class: "mr-3 btn btn-primary text-nowrap"))

    else
      return(link_to("Sign Up", signup_path, class: "mr-3 btn btn-primary text-nowrap") + link_to("Login", login_path, class: "mr-3 btn btn-primary"))
    end
  end
end
