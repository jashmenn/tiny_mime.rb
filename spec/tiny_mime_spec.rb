$: << File.dirname(__FILE__)
require 'spec_helper'

describe TinyMIME do
  before(:each) do 
  end

  it "should create a mime document" do
    mime = TinyMIME.new
    mime.attach!('This is the first message.','Content-Type' => 'text/plain')
    mime.attach!('This is message two.')

    %w{head preamble body epilogue}.each { |attribute| mime.send(attribute).should_not be_nil}
    mime.to_s.should_not be_nil
    mime.head.should match(/content-type/i)
    mime.head.should match(/boundary/i)
    mime.head.should be_a_kind_of(String)
    mime.headers.should be_a_kind_of(Hash)

    puts mime.to_s
  end
 
end
