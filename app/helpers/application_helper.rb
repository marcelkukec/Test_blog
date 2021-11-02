module ApplicationHelper
  def display_session_links
    capture do
      if user_signed_in?
        concat link_to "Uredi profil", edit_user_registration_path
        concat " "
        concat link_to "Odjava", destroy_user_session_path, method: :delete if user_signed_in?
      else
        concat link_to "Prijava", new_user_session_path unless user_signed_in?
        concat " "
        concat link_to "Registracija", new_user_registration_path unless user_signed_in?
        concat " "
      end
    end
  end
end
