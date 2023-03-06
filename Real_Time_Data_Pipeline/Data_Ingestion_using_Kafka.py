# from Scraper_Bot import df
# from kafka import KafkaProducer
# import json
#
# # Converting the unstructured data in the dataframe to JSON format
# json_data = df.to_json(orient='records')
#
# # Setting up the kafka producer
# producer = KafkaProducer(bootstrap_servers=['localhost:9092'],
#                          value_serializer=lambda x: json.dumps(x).encode('utf-8'))
#
# # Publishing the social media data to the Kafka topic
# producer.send('social_media_topic', value=json_data)