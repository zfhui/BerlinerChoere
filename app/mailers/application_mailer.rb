class ApplicationMailer < ActionMailer::Base
  layout 'mailer'

  default from: 'Fei <zhfhui+berliner-choere@gmail.com>'
  default to:   'Fei <zhfhui+berliner-choere@gmail.com>'

  def new_choir_needs_approval (choir)
    @choir = choir

    mail subject: 'Ein neuer Chor hat sich angemeldet.'
  end

end
