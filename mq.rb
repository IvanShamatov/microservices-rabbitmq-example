module MQ
  def self.say(queue_name, message = {})
    interface.publish(message.to_json, routing_key: queue_name)
  end

  def self.interface
    @interface ||= Sneakers::Publisher.new
  end
end
