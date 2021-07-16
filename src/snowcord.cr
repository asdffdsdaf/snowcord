module Snowcord
  VERSION = "1.0.0"

  DISCORD_EPOCH = 1420070400000

  def self.now_snowflake
    return self.to_snowflake(Time.utc.to_unix_ms)
  end

  def self.to_snowflake(unixTimestamp : Int)
    return (unixTimestamp - DISCORD_EPOCH) << 22
  end

  def self.to_unix(snowflake : Int)
    return (snowflake >> 22) + DISCORD_EPOCH
  end
end