# snowcord

Small Discord Snowflake converter

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     snowcord:
       github: asdffdsdaf/snowcord
   ```

2. Run `shards install`

## Usage

```crystal
require "snowcord"

Snowcord.snowflake_at # Convert current time to Discord Snowflake

Snowcord.to_snowflake(unix) # Convert unix timestamp to Discord Snowflake
Snowcord.to_unix(snowflake) # Convert Discord Snowflake to unix timestamp
```
