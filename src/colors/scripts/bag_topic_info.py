#!/usr/bin/env python3
import rosbag
import io

# Path to your bag file
bag_file = '3_person/1739963927.2225685-interactive-SmallWarehouse-Random-3.bag'


with rosbag.Bag(bag_file, 'r') as bag:
    # Print available topics
    print("Available topics:")
    for topic, info in bag.get_type_and_topic_info()[1].items():
        print(f"Topic: {topic}, Message Type: {info.msg_type}, Message Count: {info.message_count}")
    
    # Read messages from a specific topic
    topic_to_read = '/social_sim/agent_positions'
    i = 0
    for topic, msg, t in bag.read_messages(topics=[topic_to_read]):
        print(f"Message on {topic} at time {t.to_sec()}: {msg}")
        i += 1
        if i > 60:
            break
