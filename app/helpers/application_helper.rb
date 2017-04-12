module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      "<li>".html_safe + (link_to "Register", new_user_registration_path, class: "nav-link") + "</li>".html_safe +
      "<br>".html_safe +
      "<li>".html_safe + (link_to "Login", new_user_session_path, class: "nav-link") + "</li>".html_safe
    else
      + "</li>".html_safe + (link_to "Logout", destroy_user_session_path, method: :delete, class: "nav-link") + "</li>".html_safe
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class:"source-greeting")
    end
  end

  def copyright_generator
    NoobitaViewTool::Renderer.copyright 'Noobita', 'All rights reserved'
  end

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end

end
