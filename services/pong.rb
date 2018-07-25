class Pong
  include MQ
  include Sneakers::Worker
  from_queue :pong

  def work(msg)
    counter = JSON.parse(msg)['counter']
    puts "pong #{counter+1}"
    sleep 1
    publish({counter: counter+1}.to_json, to_queue: 'bing')
    ack!
  end
end
