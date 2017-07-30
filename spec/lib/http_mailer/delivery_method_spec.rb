require 'rails_helper'

describe ::HttpMailer::DeliveryMethod do
  let(:to) { 'to@fuga.com' }
  let(:cc) { 'cc@fuga.com' }
  let(:from) { 'from@fuga.com' }
  let(:subject) { 'test subject' }
  let(:text_body) { 'text body test' }
  let(:html_body) { '<div>html body test</div>' }
  let(:mail) {
    Mail.new.tap do |m|
      m.to = to
      m.from = from
      m.cc = cc
      m.subject = subject
      text_part = Mail::Part.new do
        body 'This is plain text'
      end
      m.text_part = text_part

      html_part = Mail::Part.new do
        content_type 'text/html; charset=UTF-8'
        body '<h1>This is HTML</h1>'
      end
      m.html_part = html_part
    end
  }
  let(:settings) {
    {
      url: url,
      path: path,
    }
  }

  subject { ::HttpMailer::DeliveryMethod.new(settings) }

  context 'when only url specified' do
    let(:url) { 'https://www.example.com' }
    let(:path) { nil }
    it do
      stub = stub_request(:post, "#{url}/#{to}")
      subject.deliver!(mail)
      expect(stub).to have_been_requested
    end
  end

  context 'when path specified' do
    let(:url) { 'https://www.example.com' }
    let(:path) { '/path/to' }
    it do
      stub = stub_request(:post, "#{url}#{path}/#{to}")
      subject.deliver!(mail)
      expect(stub).to have_been_requested
    end
  end
end