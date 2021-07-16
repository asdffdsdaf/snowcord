require "./spec_helper"

private TEST_TIMESTAMP = Time.utc.to_unix_ms
private TEST_SNOWFLAKE = (TEST_TIMESTAMP - 1420070400000) << 22

describe Snowcord do

  describe ".snowflake_at" do
    it "returns snowflake from timestamp" do
      Snowcord.snowflake_at(TEST_TIMESTAMP).should eq (TEST_TIMESTAMP - 1420070400000) << 22
    end
  end

  describe ".snowflake_at" do
    it "returns snowflake from timestamp" do
      Snowcord.snowflake_at.should be_close (Time.utc.to_unix_ms - 1420070400000) << 22, 50000
    end
  end

  describe ".to_unix" do
    it "returns timestamp from snowflake" do
      Snowcord.to_unix(TEST_SNOWFLAKE).should eq (TEST_SNOWFLAKE >> 22) + 1420070400000
    end
  end
end
