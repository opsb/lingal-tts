require 'sinatra'
require 'open-uri'
require 'cgi'

get '/tts' do
  content_type "audio/mpeg"
  open("http://translate.google.com/translate_tts?tl=es&q=#{CGI.escape(params[:text])}", "User-Agent" => "Mozilla/5.0")
end