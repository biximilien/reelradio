class FeedEntry < ActiveRecord::Base
  
  attr_accessible :guid, :name, :published_at, :summary, :url

  def self.break_from_feed(feed_url)
    rss = RSS::Parser.parse(open(feed_url).read, false)
    rss.items.each do |entry|
      unless exists? :guid => entry.id
        create!(
	  name: entry.title,
	  summary: entry.summary,
	  url: entry.url,
	  published_at: entry.published,
	  guid: entry.id
	)
    end
  end
  end

  def self.update_from_feed(url)
    require 'rss'
    require 'open-uri'
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      puts "Title: #{feed.channel.title}"
      feed.items.each do |item|
	puts "Methods: #{item.methods}"
        puts "Item: #{item.title}"
      end
    end
    return
  end

end