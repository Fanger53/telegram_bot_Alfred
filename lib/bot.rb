require 'telegram/bot'
require_relative '../lib/select.rb'
# begin of class BotL
class BotL
  def initialize
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |l_options|
        bot.api.send_message(chat_id: l_options.chat.id, text: 'Im alfred im here to help u what choose for to eat')
        case l_options.text
        when '/start'
          bot.api.send_message(chat_id: l_options.chat.id, text: 'hello im Alfred I can speak 2 languages for give u a better u can select from English or Spanish, just use english or spanish words')
        when 'english'
          bot.api.send_message(chat_id: l_options.chat.id, text: 'You select English languaje')
          bot.api.send_message(chat_id: l_options.chat.id, text: "You select English languaje #{Bot.new}")
        when 'spanish'
          bot.api.send_message(chat_id: l_options.chat.id, text: 'haz seleccionado Español')
          bot.api.send_message(chat_id: l_options.chat.id, text: " #{BotS.new}")
        when '/stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: l_options.chat.id, text: 'I will go to the bed', reply_markup: key_board)
        else
          bot.api.send_message(chat_id: l_options.chat.id, text: 'Wrong entry try to use /start, /stop, english or spanish')
        end
      end
    end
  end
  # class bot
  class Bot
    def initialize
      @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
      @select = Selector.new
      Telegram::Bot::Client.run(@token) do |bot|
        bot.listen do |bot_options|
          case bot_options.text
          when 'english'
            bot.api.send_message(chat_id: bot_options.chat.id, text: "Hello, #{bot_options.from.first_name},Hey, I'm Alfred, I'm here to help u to have a good diet and decide what food select in a fun way. To begin please use these keywords for using me: food for looking for a dish that u desire, inic for to go to the beginning")
          when 'food'
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
  end
  # begin class bot_s
  class BotS
    def initialize
      @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
      @select = Selector.new
      Telegram::Bot::Client.run(@token) do |bot|
        bot.listen do |bot_options|
          case bot_options.text
          when 'spanish'
            bot.api.send_message(chat_id: bot_options.chat.id, text: "Hola, #{bot_options.from.first_name}, soy alfred")
          when 'food'
            food
          when 'inic'
            bot.api.send_message(chat_id: bot_options.chat.id, text: "volver al inicio #{BotL.new} ")
          when '/stop'
            key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
            bot.api.send_message(chat_id: bot_options.chat.id, text: "Thanks for use my cooking advices", reply_markup: key_board)
          else
            bot.api.send_message(chat_id: bot_options.chat.id, text: "Wrong entry try to use start(empezar), /stop (parar)")
          end
        end
      end
    end
  end
end # fin clase botl
