$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# A class for encoding data into MIME attachments. Not optimized for
# large attachments, but should be sufficient for small attachments.
#
# Original author:  Matt Pulver
# maintained by: Nate Murray
=begin
Example Usage:

mime = TinyMIME.new
mime.attach!('This is the first message.','Content-Type' => 'text/plain')
mime.attach!('This is message two.')
puts mime.to_s

=end
class TinyMIME
  attr_accessor :content_type_parts

  ALPHABET = (0..9).to_a + ('A'..'Z').to_a + ('a'..'z').to_a # 62 = 10 + 26 + 26
  EOL = "\r\n"
  def initialize( header = {} )
    @header = header
    @attachments = Array.new
    @content_type_parts = ["Multipart/Related",  "boundary=\"#{boundary}\"", "charset=utf-8"] 
  end
  def boundary
    # 43 random characters from a set of 62 gives 43*log_2(62) > 256 random bits
    @boundary ||= (1..43).map { |i| ALPHABET[rand(ALPHABET.size)] }.join
  end
  def attach!( body, header = {} )
    @attachments << TinyMIMEAttachment.new( body, header )
  end
  def head
    # TODO : pass in additional parameters to the Content-Type value
    ( self.headers.to_a.map { |n,v| "#{n}: #{v}" } + ['',''] ).join(EOL)
  end
  def headers
    @header.merge({ 'Content-Type' => @content_type_parts.join("; ") })
  end
  def preamble
    "This is a multi-part message in MIME format.#{EOL}"
  end
  def body
    ( [''] + @attachments ).join("#{EOL}--#{boundary}#{EOL}") +
       "#{EOL}--#{boundary}--#{EOL}"
  end
  def epilogue
    ''
  end
  def to_s
    head + full_body
  end
  # full message without the headers
  def full_body
    preamble + body + epilogue
  end
end

# An attachment is a single string, and hash of header name=value pairs.
class TinyMIMEAttachment
  EOL = TinyMIME::EOL
  def initialize( body, header = {} )
    @body = body.instance_of?(Array) ? body.join : body
    @header = header
  end
  def to_s
    ( @header.to_a.map { |n,v| "#{n}: #{v}" } + [''] + [@body] ).join(EOL)
  end
end
