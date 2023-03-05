import snscrape.modules.twitter as sntwitter
import pandas as pd

def scrape_tweets(query: str, num_tweets: int) -> pd.DataFrame:
    tweet_list = []
    for i, tweet in enumerate(sntwitter.TwitterSearchScraper(query).get_items()):
        if i >= num_tweets:
            break
        tweet_dict = {}
        tweet_dict['id'] = tweet.id
        tweet_dict['date'] = tweet.date
        tweet_dict['content'] = tweet.rawContent
        tweet_dict['username'] = tweet.user.username
        tweet_dict['followers'] = tweet.user.followersCount
        tweet_dict['location'] = tweet.user.location
        tweet_dict['hashtags'] = [hashtag.__str__() for hashtag in tweet.hashtags] if tweet.hashtags else None
        tweet_dict['retweets'] = tweet.retweetCount
        tweet_dict['favorites'] = tweet.likeCount
        tweet_dict['language'] = tweet.lang
        tweet_dict['source'] = tweet.sourceLabel
        tweet_list.append(tweet_dict)

    df = pd.DataFrame(tweet_list)
    return df

# Example usage:
query = 'Hogwarts Legacy'
num_tweets = 5000
df = scrape_tweets(query, num_tweets)
#print(df)