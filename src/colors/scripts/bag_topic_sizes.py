#!/usr/bin/env python3
import rosbag
import io

# Path to your bag file
bag_file = '1733931109.0102358-interactive-SmallWarehouse-Random-1.bag'


def format_size(bytes):
    """Format bytes into a human-readable string (KB, MB)."""
    if bytes >= 1 << 20:  # Greater than or equal to 1 MB
        return f"{bytes / (1 << 20):.2f} MB"
    elif bytes >= 1 << 10:  # Greater than or equal to 1 KB
        return f"{bytes / (1 << 10):.2f} KB"
    else:  # Bytes
        return f"{bytes} Bytes"

def get_topic_sizes(bag_file):
    topic_sizes = {}
    
    with rosbag.Bag(bag_file, 'r') as bag:
        for topic, msg, _ in bag.read_messages():
            # Serialize the message to a temporary buffer
            buff = io.BytesIO()
            msg.serialize(buff)
            size = buff.tell()  # Get the size of the serialized message
            
            if topic not in topic_sizes:
                topic_sizes[topic] = 0
            topic_sizes[topic] += size

    return topic_sizes

def display_topic_sizes(topic_sizes):
    total_size = sum(topic_sizes.values())
    print(f"{'Topic':<40} {'Size':>20} {'Contribution (%)':>20}")
    print("-" * 85)
    for topic, size in sorted(topic_sizes.items(), key=lambda item: item[1], reverse=True):
        contribution = (size / total_size) * 100
        print(f"{topic:<40} {format_size(size):>20} {contribution:>20.2f}")
    print(f"\nTotal size: {format_size(total_size)}")

# Analyze and display topic size contributions
topic_sizes = get_topic_sizes(bag_file)
display_topic_sizes(topic_sizes)
