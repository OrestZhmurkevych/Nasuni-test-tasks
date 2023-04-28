Before('@api') do
  @http_client = HttpClient.new
  @logger = Logger.new(STDOUT)
  @logger.level = Logger::DEBUG
  @cleanup_manager = CleanupManager.new(@http_client, @logger)
end

After('@cleanup') do
  @cleanup_manager.delete_items unless @cleanup_manager.created_items.empty?
end