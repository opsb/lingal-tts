require 'sinatra'
require 'open-uri'
require 'cgi'

get '/' do
  content_type "audio/mpeg"
  open("http://translate.google.com/translate_tts?tl=#{params[:tl]}&q=#{CGI.escape(params[:q])}", "User-Agent" => "Mozilla/5.0")
end