module ItemHelper
  def allowed_content_type
    Item::FILE_CONTEN_TYPE.join(', ')
  end

  def max_file_size_human
    number_to_human_size(Item::MAX_FILE_SIZE)
  end

  def expired_time_human
    distance_of_time_in_words(Time.now, Item::FILE_LIFE_TIME.ago)
  end

  def remain_time(item)
    tag.span item.expired_after, id: 'time', data: {remain: item.remain_seconds}
  end
end