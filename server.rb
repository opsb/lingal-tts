# encoding: utf-8

require 'sinatra'
require 'open-uri'
require 'cgi'

before do
  content_type :html, 'charset' => 'utf-8'
end

get '/' do
  content_type "audio/mpeg"
  uri = "http://translate.google.com/translate_tts?" + request.query_string
  open(uri, "User-Agent" => "Mozilla/5.0")
end