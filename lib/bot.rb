require 'telegram/bot'
require_relative '../lib/select.rb'

class Bot_l
  def initialize
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    Telegram::Bot::Client.run(@token) do |bot| 
      bot.listen do|l_options|
      case l_options.text
        when  '/start'
          bot.api.send_message(chat_id: l_options.chat.id,text:"hello im alfred i can speak 2 languages u can select from English or Spanish, just use /English for english or /Spanish for spanish")
        when '/English' 
          bot.api.send_message(chat_id: l_options.chat.id,text:"#{ Bot.new}")
        when '/Spanish'
          bot.api.send_message(chat_id: l_options.chat.id,text: "#{ Bot_s.new}")
        when '/stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: l_options.chat.id, text: "Thanks for use my cooking advices", reply_markup: key_board)
        else 
          bot.api.send_message(chat_id: l_options.chat.id,text: "Wrong entry try to use /star, /stop, /English, /Spanish  ") 
      end
    end
  end
  end
end

class Bot
  def initialize
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    @select = Selector.new
    Telegram::Bot::Client.run(@token) do |bot| 
      bot.listen do|bot_options|
      case bot_options.text
        when '/start' 
          bot.api.send_message(chat_id: bot_options.chat.id, text: "Hello, #{bot_options.from.first_name},Im Alfred im here to help u to have good diet, like the helper of mr wayne i always try to do the best")
        when '/music'
          music
        when '/stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: bot_options.chat.id, text: "Thanks for use my cooking advices", reply_markup: key_board)
        else 
          bot.api.send_message(chat_id: bot_options.chat.id,text: "Wrong entry try to use /start, /stop, /English, /Spanish  ") 
      end
    end
  end
  end
end

class Bot_s
  def initialize
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    @select = Selector.new
    Telegram::Bot::Client.run(@token) do |bot| 
      bot.listen do|bot_options|
      case bot_options.text
        when '/start' 
          bot.api.send_message(chat_id: bot_options.chat.id, text: "Hello, #{bot_options.from.first_name},hola soy alfred ")
        when '/music'
          music
        when '/stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: bot_options.chat.id, text: "Thanks for use my cooking advices", reply_markup: key_board)
        else 
          bot.api.send_message(chat_id: bot_options.chat.id,text: "Wrong entry try to use /start(empezar), /stop, /English, /Spanish  ") 
      end
    end
  end
  end

  def music
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when '/meal'
          answers = Telegram::Bot::Types::ReplyKeyboardMarkup
            .new(keyboard: [%w[Breakfast Lunch], %w[Dinner Elevenses]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: 'Select what you want to eat', reply_markup: answers)
        when '/breakfast'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.breakfast))
        when '/lunch'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.lunch))
        when '/dinner'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.dinner))
        when '/elevenses'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.elevenses))
        else
          bot.api.send_message(chat_id: message.chat.id, text: "choose your meal btwn /breakfast, /lunch, /dinner, /elevenses")
        end
      end
    end
  end
end