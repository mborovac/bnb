class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  PER_PAGE_NUMBER = 10

  # TODO simple form for notice
  # = simple_form_for(@user, html: { class: 'form-horizontal' }) do |form|

  around_filter :catch_errors
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  before_action :find_user

  def catch_errors
    begin
      yield
    rescue Exception => e
      ErrorNotifier.error_report(e.message,  e.backtrace.join("\n"),
       current_user, params).deliver unless Rails.env =='development'
      # log_error(e)
      raise
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to main_app.root_path, :alert => exception.message }
      #format.html { redirect_to '/users/sign_in', :alert => exception.message }
      format.xml { render :xml => '', :status => :forbidden }
    end
  end

  protected

    def configure_permitted_parameters
      # devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role])
      devise_parameter_sanitizer.for(:sign_up) << [:username, :role]
    end

    def find_user
      @user = current_user
    end
end
