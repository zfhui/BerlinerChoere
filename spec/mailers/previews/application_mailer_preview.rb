require 'factory_girl_rails'

# Preview all emails at http://localhost:3000/rails/mailers/application_mailer
class ApplicationMailerPreview < ActionMailer::Preview

  def new_choir_needs_approval_preview
    choir = FactoryGirl.build(:choir)
    ApplicationMailer.new_choir_needs_approval(choir)
  end

end
