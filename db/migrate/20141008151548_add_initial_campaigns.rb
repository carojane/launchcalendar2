class AddInitialCampaigns < ActiveRecord::Migration
  def up
    @alpha    = Campaign.create(name: "Alpha",
                                start_date: "Aug 11",
                                end_date: "Aug 15"
                                )
    @bravo    = Campaign.create(name: "Bravo",
                                start_date: "Aug 18",
                                end_date: "Aug 22"
                                )
    @charlie  = Campaign.create(name: "Charlie",
                                start_date: "Sept 8",
                                end_date: "Sept 19"
                                )
    @delta    = Campaign.create(name: "Delta",
                                start_date: "Sept 22",
                                end_date: "Oct 3"
                                )
    @echo     = Campaign.create(name: "Echo",
                                start_date: "Oct 6",
                                end_date: "Oct 17"
                                )
    @week = [@alpha, @bravo, @charlie, @delta, @echo]
    @start_date = Date.new(2014,8,11)

    @week.each do |week|
      Week.create(campaign_id: week.id,
                  week_number: 1,
                  week_start: @start_date.to_s)
      @start_date += 7
      Week.create(campaign_id: week.id,
                  week_number: 2,
                  week_start: @start_date.to_s)
      @start_date += 7
    end
  end

  def down
    Campaign.delete_all
    Week.delete_all
  end
end
