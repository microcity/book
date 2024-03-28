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
* [2. 数据处理基础](chapter2/2.data_processing.md)
  * [2.1. 数据分类及结构](chapter2/2.1.data_structure.md)
  * [2.2. 数据编辑及可视化](chapter2/2.2.data_visualization.md)
  * [2.3. 地理数据分析](chapter2/2.3.geodata_analysis.md)
  * [2.4. 空间网络拓扑](chapter2/2.4.network_topology.md)
* [3. 平面设施选址](chapter3/3.location_choice.md)
  * [3.1. 迭代重心方法](chapter3/3.1.iterative_centroid.md)
  * [3.2. 连续近似方法](chapter3/3.2.continous_approx.md)
  * [3.3. 离散选址模型](chapter3/3.3.discrete_location.md)
  * [3.4. Lagrangian松弛技术](chapter3/3.4.lagrangian_relax.md)
* [4. 运输路径规划](chapter4/4.route_planning.md)
  * [4.1. 最短路径问题](chapter4/4.1.shortest_path.md)
  * [4.2. 标号法及Prime-Dual原理](chapter4/4.2.labelling_algorithm.md)
  * [4.3. 车辆路径问题](chapter4/4.3.vehicle_routing.md)
  * [4.4. DW分解及列生成](chapter4/4.4.column_generation.md)
* [5. 网络流量分配](chapter5/5.flow_assignment.md)
  * [5.1. 最小费用流模型](chapter5/5.1.minimum_flow.md)
  * [5.2. 非线性网络流](chapter5/5.2.nonlinear_flow.md)
  * [5.2. Benders分解技术](chapter5/5.3.benders_decomposition.md)
  * [5.4. 空间价格均衡](chapter5/5.4.price_equilibrium.md)
* [6. 虚拟仿真建模](chapter6/6.simulation.md)
  * [6.1. 虚拟现实技术](6.1.virtual_reality.md)
  * [6.2. 时间扫描推进法](chapter6/6.2.time_scanning.md)
  * [6.3. 离散事件调度法](chapter6/6.3.event_scheduling.md)
  * [6.4. IO分析与随机数生成](chapter6/6.4.random_generation.md)
* [附录](appendix/appedix.md)
  * [软件指南](appendix/soft_guide.md)
  * [参考文献](appendix/references.md)
EOF