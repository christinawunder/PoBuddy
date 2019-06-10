class Users::SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(_resource)
    ((Date.today - 30) .. Date.today - 1).each do |date|
      unless current_user.days.map(&:date).include?(date)
        current_user.days << Day.create!(date: date, user: current_user)
      end
    end
  end
end
