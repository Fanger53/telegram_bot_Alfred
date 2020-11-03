
class Bot_s
  def initialize
    @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
    @select = Selector.new
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do|bot_options|
        case bot_options.text
        when 'spanish'
          bot.api.send_message(chat_id: bot_options.chat.id, text: "Hola, #{bot_options.from.first_name}, soy alfred ")
        when 'food'
          food
        when 'inic'
          bot.api.send_message(chat_id: bot_options.chat.id,text: "volver al inicio #{Bot_l.new} ")
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


def food
  @token = '1495663141:AAFFpexoWNH-GJq1HlbIO3e3ObECgKnTeoI'
  Telegram::Bot::Client.run(@token) do |bot|
    bot.listen do |message|
      case message.text
        when 'food'
          bot.api.send_message(chat_id: message.chat.id, text: 'Select what you want to eat')
        when 'breakfast'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.breakfast))
        when 'lunch'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.lunch))
        when 'dinner'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.dinner))
        when 'elevenses'
          bot.api.send_message(chat_id: message.chat.id, text: @select.rand_select(@select.elevenses))
        when 'inic'
          bot.api.send_message(chat_id: message.chat.id,text: "volver al inicio #{Bot_l.new} ") 
        when 'stop'
          key_board = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: "Thanks for use my recipes", reply_markup: key_board)
        else
          bot.api.send_message(chat_id: message.chat.id, text: "wrong entry")
      end
    end
  end
