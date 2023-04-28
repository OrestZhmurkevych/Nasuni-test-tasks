class CleanupManager

  attr_accessor :created_items

  def initialize(http_client, logger)
    @created_items = {}
    @http_client = http_client
    @logger = logger
  end

  def add_item(item_type, id)
    @created_items[item_type.to_sym] = id
  end

  def delete_items
    @logger.info('Cleanup process started')
    @created_items.each do |key, value|
      case key
      when :pet
        endpoint = "/pet/#{value}"
      when :purchase_order
        endpoint = "/store/order/#{value}"
      end
      response = @http_client.delete(endpoint)
      @logger.info("Deleted #{key} with ID --> #{value}") if response.code == 200
    end
    @logger.info('Cleanup process finished')
  end

end