require 'sinatra'
require 'open-uri'

get '/tts' do
  content_type "audio/mpeg"
  open("http://translate.google.com/translate_tts?tl=es&q=#{params[:text]}", "User-Agent" => "Mozilla/5.0")
end