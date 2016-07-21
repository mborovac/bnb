class ErrorNotifier < ActionMailer::Base
  default :from => YAML.load_file(PROPERTIES_PATH)['error_notifier_email_address']

  def error_report(message, backtrace, user, params = nil)
    @error_details = message
    @params = params
    @user = user
    @backtrace = backtrace
    mail :to => User.where(role: [UserRole[:ADMINISTRATOR].value]).map( &:email ), :subject => "[BikeAndBed - ERROR NOTIFIER] Error on #{Rails.env}"
  end

  # def transform_failed(input_document)
  #   @input_document = input_document
  #   mail :to => User.where(role: ["ADMINISTRATOR", "USER"]).map( &:email ), :subject => "[SAP Bridge] Error in processing Input document ##{@input_document.id}"
  #   # mail :to => User.where.not(role: ["EXT_USER", "CASHIER", "ACCOUNTING"]).map( &:email ), :subject => "[SAP Bridge] Error in processing Input document ##{@input_document.id}"
  # end
  #
  # def generator_failed(input_document, message)
  #   @input_document = input_document
  #   @message = message
  #   mail :to => User.where(role: ["ADMINISTRATOR", "USER"]).map( &:email ), :subject => "[SAP Bridge] Error while generating output document for Input document ##{@input_document.id}"
  # end
  #
  # def send_failed(output_document, message)
  #   @output_document = output_document
  #   @message = message
  #   mail :to => User.where(role: ["ADMINISTRATOR", "USER"]).map( &:email ), :subject => "[SAP Bridge] Error while sending Output document ##{@output_document.id}"
  # end
  #
  # def transaction_generator_failed(input_document, message)
  #   @input_document = input_document
  #   @message = message
  #   mail :to => User.where(role: ["ADMINISTRATOR", "USER"]).map( &:email ), :subject => "[SAP Bridge] Error while generating reservation transactions based on Input document ##{@input_document.id}"
  # end

end
