class ErrorNotifier < ActionMailer::Base
  default from: YAML.load_file(PROPERTIES_PATH)['error_notifier_email_address']

  def error_report(message, backtrace, user, params = nil)
    @error_details = message
    @params = params
    @user = user
    @backtrace = backtrace
    Rails.logger.info("An error occured! @error_details: #{@error_details}, @params: #{@params}, user: #{@user}, stacktrace: #{@backtrace}")
    mail to: User.where(role: [UserRole[:ADMINISTRATOR].value]).map(&:email),
          subject: "[BikeAndBed - ERROR NOTIFIER] Error on #{Rails.env}"
  end

end
