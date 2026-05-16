import os

# Your list of filenames
filenames = """Revising_the_Select_Query_I.sql
Revising_the_Select_Query_II.sql
Select_All.sql
Select_By_ID.sql
Japanese_Cities_Attributes.sql
Japanese_Cities_Names.sql
Weather_Observation_Station_1.sql
Weather_Observation_Station_3.sql
Weather_Observation_Station_4.sql
Weather_Observation_Station_5.sql
Weather_Observation_Station_6.sql
Weather_Observation_Station_7.sql
Weather_Observation_Station_8.sql
Weather_Observation_Station_9.sql
Weather_Observation_Station_10.sql
Weather_Observation_Station_11.sql
Weather_Observation_Station_12.sql
Higher_Than_75_Marks.sql
Employee_Names.sql
Employee_Salaries.sql
Type_of_Triangle.sql
The_PADS.sql
Occupations.sql
Binary_Tree_Nodes.sql
New_Companies.sql
Revising_Aggregations_The_Count_Function.sql
Revising_Aggregations_The_Sum_Function.sql
Revising_Aggregations_Averages.sql
Average_Population.sql
Japan_Population.sql
Population_Density_Difference.sql
The_Blunder.sql
Top_Earners.sql
Weather_Observation_Station_2.sql
Weather_Observation_Station_13.sql
Weather_Observation_Station_14.sql
Weather_Observation_Station_15.sql
Weather_Observation_Station_16.sql
Weather_Observation_Station_17.sql
Weather_Observation_Station_18.sql
Weather_Observation_Station_19.sql
Weather_Observation_Station_20.sql
Population_Census.sql
African_Cities.sql
Average_Population_of_Each_Continent.sql
The_Report.sql
Top_Competitors.sql
Ollivanders_Inventory.sql
Challenges.sql
Contest_Leaderboard.sql
SQL_Project_Planning.sql
Placements.sql
Symmetric_Pairs.sql
Interviews.sql
15_Days_of_Learning_SQL.sql
Draw_The_Triangle_1.sql
Draw_The_Triangle_2.sql
Print_Prime_Numbers.sql"""

# Create folders for each category (optional but recommended)
folders = {
    'Basic-Select': filenames.split('\n')[0:20],  # First 20
    'Advanced-Select': filenames.split('\n')[20:25],  # Next 5
    'Aggregation': filenames.split('\n')[25:42],  # Next 17
    'Basic-Join': filenames.split('\n')[42:50],  # Next 8
    'Advanced-Join': filenames.split('\n')[50:55],  # Next 5
    'Alternative-Queries': filenames.split('\n')[55:58]  # Last 3
}

# Create all files in a flat structure (all in one folder)
def create_flat_structure():
    """Create all files in the current directory"""
    for filename in filenames.split('\n'):
        with open(filename, 'w') as f:
            # Add a comment header to each file
            f.write(f"-- HackerRank SQL Solution\n")
            f.write(f"-- Problem: {filename.replace('.sql', '').replace('_', ' ')}\n")
            f.write(f"-- Difficulty: \n\n")
            f.write(f"-- Write your solution here\n")
    print(f"✅ Created {len(filenames.split('\n'))} files in current directory")

# Create files organized by category folders
def create_organized_structure():
    """Create files organized in category folders"""
    for folder_name, file_list in folders.items():
        # Create the folder if it doesn't exist
        os.makedirs(folder_name, exist_ok=True)
        
        # Create each file inside the folder
        for filename in file_list:
            filepath = os.path.join(folder_name, filename)
            with open(filepath, 'w') as f:
                f.write(f"-- HackerRank SQL Solution\n")
                f.write(f"-- Problem: {filename.replace('.sql', '').replace('_', ' ')}\n")
                f.write(f"-- Category: {folder_name}\n\n")
                f.write(f"-- Write your solution here\n")
        print(f"✅ Created {len(file_list)} files in {folder_name}/")
    
    print(f"\n🎉 Total: 58 files created across 6 folders!")

# Run either option:
# Option 1: All files in one folder
# create_flat_structure()

# Option 2: Organized by category (RECOMMENDED)
create_organized_structure()