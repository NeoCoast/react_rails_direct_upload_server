class BlobCleanupJob < ActiveJob::Base
  queue_as :default

  def perform
    ActiveStorage::Blob.unattached.where('active_storage_blobs.created_at < :time', { time: 1.week.ago }).find_each(&:purge_later)
  end
end
