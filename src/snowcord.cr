module Snowcord
  VERSION = "1.0.0"

  DISCORD_EPOCH = 1420070400000

  def self.snowflake_at(time : Int = Time.utc.to_unix_ms)
    return self.to_snowflake(time)
  end

  def self.to_snowflake(unix_timestamp : Int)
    return (unix_timestamp - DISCORD_EPOCH) << 22
  end

  def self.to_unix(snowflake : Int)
    return (snowflake >> 22) + DISCORD_EPOCH
  end
end