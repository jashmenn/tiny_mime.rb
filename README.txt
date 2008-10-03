= tiny_mime

* http://github.com/jashmenn/tiny_mime.rb/tree/master

== DESCRIPTION:

# A class for encoding data into MIME attachments. Not optimized for
# large attachments, but should be sufficient for small attachments.
#
# Original author:  Matt Pulver
# maintained by: Nate Murray

== SYNOPSIS:

  require 'tiny_mime'
  mime = TinyMIME.new
  mime.attach!('This is the first message.','Content-Type' => 'text/plain')
  mime.attach!('This is message two.')
  puts mime.to_s

returns something like:

  Content-Type: Multipart/Related; boundary="qI656pjBHP8253G5dn3nBXdixCNSbjfE9284jdQVSd1"; charset=utf-8

  This is a multi-part message in MIME format.

  --qI656pjBHP8253G5dn3nBXdixCNSbjfE9284jdQVSd1
  Content-Type: text/plain

  This is the first message.
  --qI656pjBHP8253G5dn3nBXdixCNSbjfE9284jdQVSd1

  This is message two.
  --qI656pjBHP8253G5dn3nBXdixCNSbjfE9284jdQVSd1--

== INSTALL:

* gem install --source http://gems.github.com tiny_mime

== LICENSE:

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
