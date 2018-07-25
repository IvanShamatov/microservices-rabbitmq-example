class Bing
  include Sneakers::Worker
  from_queue :bing

  def work(msg)
    counter = JSON.parse(msg)['counter']
    puts "ping #{counter+1}"
    sleep 1
    publish({counter: counter+1}.to_json, to_queue: 'pong')
    ack!
  end
end
