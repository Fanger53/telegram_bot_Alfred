# rubocop: disable Metrics/MethodLength,Metrics/CyclomaticComplexity,Metrics/AbcSize,Layout/LineLength
require 'telegram/bot'
require_relative '../lib/select'
# begin of class BotL
class BotL
  def initialize
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |l_options|
        case l_options.text
        when '/start'
          bot.api.send_message(chat_id: l_options.chat.id, text: 'Im Alfred, Im here to help u to choose  your food')
          bot.api.send_message(chat_id: l_options.chat.id, text: 'I can speak 2 languages for give u a better service')
          bot.api.send_message(chat_id: l_options.chat.id, text: 'u can select from English or Spanish')
          bot.api.send_message(chat_id: l_options.chat.id, text: 'just use english or español keywords')
        when 'english'
          bot.api.send_message(chat_id: l_options.chat.id, text: 'You select English languaje')
          english
        when 'español'
          bot.api.send_message(chat_id: l_options.chat.id, text: 'haz seleccionado Español')
          spanish
        when 'inic'
          bot.api.send_message(chat_id: l_options.chat.id, text: 'You can select again the language')
        when '/stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: l_options.chat.id, text: 'I will go to the bed', reply_markup: key_board)
        else
          bot.api.send_message(chat_id: l_options.chat.id, text: 'Wrong entry use /start, /stop, english or spanish')
        end
      end
    end
  end

  def english
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |bot_options|
        case bot_options.text
        when 'english'
          bot.api.send_message(chat_id: bot_options.chat.id, text: "Hello, #{bot_options.from.first_name},I'm Alfred")
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'Im here to help u, what food select in a fun way')
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'use this keyword for using me:')
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'food for looking for a dish that u desire')
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'inic for return to the beginning')
        when 'food'
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'options: breakfast, lunch, dinner or elevenses')
          food
        when 'inic'
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'Comeback to the beginning')
          bot.api.send_message(chat_id: bot_options.chat.id, text: "volver al inicio #{BotL.new} ")
        when '/stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'Thanks for use my cooking advices', reply_markup: key_board)
        else
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'Wrong entry try to use start), /stop')
        end
      end
    end
  end

  def spanish
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |bot_options|
        case bot_options.text
        when 'spanish'
          bot.api.send_message(chat_id: bot_options.chat.id, text: "Hola, #{bot_options.from.first_name}, soy alfred")
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'para ver las opciones de comida escribe food')
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'y despues escribe una de las opciones')
        when 'food'
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'desayuno,almuerzo, cena u onces')
          food
        when 'inic'
          bot.api.send_message(chat_id: bot_options.chat.id, text: "volver al inicio #{BotL.new} ")
        when '/stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'Thanks for use my cooking advices', reply_markup: key_board)
        else
          bot.api.send_message(chat_id: bot_options.chat.id, text: 'Wrong entry use start(empezar), /stop (parar)')
        end
      end
    end
  end

  def food
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    @select = Selector.new
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when 'food'
          bot.api.send_message(chat_id: message.chat.id, text: '..')
        when 'breakfast'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.breakfast))
        when 'desayuno'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.breakfast))
        when 'lunch'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.lunch))
        when 'almuerzo'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.lunch))
        when 'dinner'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.dinner))
        when 'cena'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.dinner))
        when 'elevenses'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.elevenses))
        when 'onces'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.elevenses))
        when 'inic'
          bot.api.send_message(chat_id: message.chat.id, text: "volver al inicio #{BotL.new} ")
        when 'stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: 'Thanks for use my recipes', reply_markup: key_board)
        else
          bot.api.send_message(chat_id: message.chat.id, text: 'wrong entry')
        end
      end
    end
  end
end

# rubocop: enable Metrics/MethodLength,Metrics/CyclomaticComplexity,Metrics/AbcSize,Layout/LineLength
