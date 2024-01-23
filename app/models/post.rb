class Post < ApplicationRecord
  # 3GB just for fun
  MAX_MEDIA_SIZE = 3072

  has_many_attached :media_files

  validates :media_files,
            content_type: [%r{\Aimage/.*\z}, %r{\Avideo/.*\z}],
            size: { less_than: MAX_MEDIA_SIZE.megabytes,
                    message: "is too large (max is #{MAX_MEDIA_SIZE})" }
end
