class Baby < ApplicationRecord
        validates :name, presence: true
        has_many :feed, dependent: :destroy

        def total_feed 
                self.feed.map(&:cantidad).sum
        end

        def today_feeds
                arr = self.feed.map(&:date)
                arr.select{|reg| reg.to_date == Date.today}.count
        end

        def last_feed
                arr = self.feed.map(&:date)
                arr.max.strftime('%H:%M - %d/%m/%Y') if arr.count > 0
        end

        def total_time_today
                arr = self.feed.pluck(:date, :time)
                arr = arr.select{|reg| reg.first.to_date == Date.today}
                arr.map{|reg| reg.second}.sum
        end

        def total_feeds_today
                arr = self.feed.pluck(:date, :cantidad)
                arr = arr.select{|reg| reg.first.to_date == Date.today}
                arr.map{|reg| reg.second}.sum
        end
end
