#!/bin/bash

# Function to create files from a line of text
create_file_from_line() {
    local line="$1"
    # Extract the file name and content using regex
    if [[ $line =~ \*\ \[(.*)\]\((.*)\) ]]; then
        local content="${BASH_REMATCH[1]}"
        local filename="${BASH_REMATCH[2]}"
        # Create the directory if it doesn't exist
        mkdir -p "$(dirname "$filename")"
        # Write the content to the file
        echo "# $content" > "$filename"
    fi
}

# Read each line from the input file
while IFS= read -r line; do
    create_file_from_line "$line"
done <<EOF
* [2. Data Processing Basics](chapter2/2.data_processing.md)
   * [2.1. Data Types and Structure](chapter2/2.1.data_structure.md)
   * [2.2. Data Editing and Visualization](chapter2/2.2.data_visualization.md)
   * [2.3. Geographic Data Analysis](chapter2/2.3.geodata_analysis.md)
   * [2.4. Space Network Topologizing](chapter2/2.4.network_topology.md)
* [3. Planar Facility Location Choice](chapter3/3.location_choice.md)
   * [3.1. Iterative Centroid Method](chapter3/3.1.iterative_centroid.md)
   * [3.2. Continuous Approximation Method](chapter3/3.2.continous_approx.md)
   * [3.3. Discrete Location Model](chapter3/3.3.discrete_location.md)
   * [3.4. Lagrangian Relaxation](chapter3/3.4.lagrangian_relax.md)
* [4. Freight Route Planning](chapter4/4.route_planning.md)
   * [4.1. Shortest Path Problem](chapter4/4.1.shortest_path.md)
   * [4.2. Labeling Method and Prime-Dual Principle](chapter4/4.2.labelling_algorithm.md)
   * [4.3. Vehicle Routing Problem](chapter4/4.3.vehicle_routing.md)
   * [4.4. DW Decomposition and Column Generation](chapter4/4.4.column_generation.md)
* [5. Network Flow Assignment](chapter5/5.flow_assignment.md)
   * [5.1. Minimum Cost Flow Model](chapter5/5.1.minimum_flow.md)
   * [5.2. Nonlinear Network Flow](chapter5/5.2.nonlinear_flow.md)
   * [5.2. Benders Decomposition](chapter5/5.3.benders_decomposition.md)
   * [5.4. Spatial Price Equilibrium](chapter5/5.4.price_equilibrium.md)
* [6. Simulation Modeling](chapter6/6.simulation.md)
   * [6.1. Virtual Reality](chapter6/6.1.virtual_reality.md)
   * [6.2. Time Scanning](chapter6/6.2.time_scanning.md)
   * [6.3. Event Scheduling](chapter6/6.3.event_scheduling.md)
   * [6.4. IO Analysis and Random Generation](chapter6/6.4.random_generation.md)
* [Appendix](appendix/appedix.md)
   * [Software Guide](appendix/soft_guide.md)
   * [References](appendix/references.md)
EOF