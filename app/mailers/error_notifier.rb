class ErrorNotifier < ActionMailer::Base
  default :from => YAML.load_file(PROPERTIES_PATH)['error_notifier_email_address']

  def error_report(message, backtrace, user, params = nil)
    @error_details = message
    @params = params
    @user = user
    @backtrace = backtrace
    mail :to => User.where(role: [UserRole[:ADMINISTRATOR].value]).map( &:email ), :subject => "[BikeAndBed - ERROR NOTIFIER] Error on #{Rails.env}"
  end

end
