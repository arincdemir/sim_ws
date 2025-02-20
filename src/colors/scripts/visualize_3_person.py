import rosbag
import numpy as np
import matplotlib.pyplot as plt
import glob
import os

# Function to process and plot data from a rosbag file
def plot_data_from_bag(bag_file, output_folder, sampling_interval=8):
    # Open the rosbag file
    bag = rosbag.Bag(bag_file)
    
    # Store extracted data
    pedestrian_data = {}
    robot_timestamps = []
    robot_x = []
    robot_y = []
    
    # Extract pedestrian data
    topic_pedestrian = '/social_sim/agent_positions'
    for topic, msg, t in bag.read_messages(topics=[topic_pedestrian]):
        for i, pose in enumerate(msg.poses):
            if i not in pedestrian_data:
                pedestrian_data[i] = {'timestamps': [], 'x': [], 'y': []}
            pedestrian_data[i]['x'].append(pose.position.x)
            pedestrian_data[i]['y'].append(pose.position.y)
            pedestrian_data[i]['timestamps'].append(t.to_sec())
    
    # Normalize pedestrian timestamps
    for i in pedestrian_data:
        timestamps = np.array(pedestrian_data[i]['timestamps'])
        if len(timestamps) > 0:
            normalized_time = (timestamps - min(timestamps)) / (max(timestamps) - min(timestamps))
            pedestrian_data[i]['normalized_time'] = normalized_time
    
    # Extract robot data
    topic_robot = '/tf'
    for topic, msg, t in bag.read_messages(topics=[topic_robot]):
        for transform in msg.transforms:
            if transform.header.frame_id == "map" and transform.child_frame_id == "base_link":
                robot_x.append(transform.transform.translation.x)
                robot_y.append(transform.transform.translation.y)
                robot_timestamps.append(t.to_sec())
    
    robot_normalized_time = (np.array(robot_timestamps) - min(robot_timestamps)) / (max(robot_timestamps) - min(robot_timestamps))
    
    # Undersample the data if necessary
    undersampled_robot_x = robot_x[::sampling_interval]
    undersampled_robot_y = robot_y[::sampling_interval]
    undersampled_robot_normalized_time = robot_normalized_time[::sampling_interval]
    
    # Create the plot
    plt.figure(figsize=(10, 6))

    # Plot pedestrian positions
    for i in pedestrian_data:
        if 'normalized_time' in pedestrian_data[i]:
            undersampled_pedestrian_x = pedestrian_data[i]['x'][::sampling_interval]
            undersampled_pedestrian_y = pedestrian_data[i]['y'][::sampling_interval]
            undersampled_pedestrian_normalized_time = pedestrian_data[i]['normalized_time'][::sampling_interval]
            plt.scatter(
                undersampled_pedestrian_x, 
                undersampled_pedestrian_y, 
                c=undersampled_pedestrian_normalized_time, 
                cmap='viridis', 
                s=50, 
                marker='o', 
                label=f'Pedestrian {i} Positions'
            )

    # Plot robot positions
    plt.scatter(
        undersampled_robot_x, 
        undersampled_robot_y, 
        c=undersampled_robot_normalized_time, 
        cmap='viridis', 
        s=50, 
        marker='x', 
        label='Robot Positions'
    )

    # Add colorbars
    plt.colorbar(label="Timestamp (normalized)")

    # Labels and title
    plt.xlabel('X Position')
    plt.ylabel('Y Position')
    plt.title(f'Pedestrian and Robot Positions')

    # Ensure equal scaling and add grid
    plt.gca().set_aspect('equal', adjustable='box')
    plt.xlim(-6, 5)  # Adjust as per your data range
    plt.ylim(-16, -5)  # Adjust as per your data range
    plt.grid(True)

    # Show legend
    plt.legend()

    output_filename = os.path.join(output_folder, f"{os.path.basename(bag_file).split('.')[0]}.png")
    plt.savefig(output_filename, format='png')
    plt.close()  # Close the plot to avoid overlap when saving multiple plots

bag_files = glob.glob('3_person/*.bag', recursive=True)

# Print all found bag files
for bag_file in bag_files:
    print(bag_file)

output_folder = "output_plots"

# Loop over each bag file and generate the plot
for bag_file in bag_files:
    plot_data_from_bag(bag_file, output_folder)