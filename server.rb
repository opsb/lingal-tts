# encoding: utf-8

require 'sinatra'
require 'open-uri'
require 'cgi'

get '/' do
  content_type "audio/mpeg"
  query_string = params.map{ |k,v| "#{k}=#{URI.encode(v)}" }.join("&")
  uri = "http://translate.google.com/translate_tts?" + query_string
  open(uri, "User-Agent" => "Mozilla/5.0")
end