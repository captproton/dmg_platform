class TestMailer < ApplicationMailer
  default from: 'carl@dicemediagroup.com'

  def hello
    mail(
      subject: 'Hello from Postmark',
      to: 'carl@dicemediagroup.com',
      from: 'carl@dicemediagroup.com',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens: 'true',
      message_stream: 'outbound')
  end
end

