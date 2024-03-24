#!/bin/bash

# 创建目录和文件的函数
create_files() {
    local dir=$1
    local file=$2
    local title=$3

    # 创建目录
    mkdir -p $dir

    # 创建文件并写入标题
    echo "# $title" > $dir/$file
}

# 执行创建文件和目录的命令
create_files	chapter1	1.introduction.md	"1. Introduction"
create_files	chapter2	2.data_processing.md	"2. Spatial data processing"
create_files	chapter2	2.1.data_classify.md	"2.1. Classification of spatial data"
create_files	chapter2	2.2.projection.md	"2.2. Coordinate system and projection display"
create_files	chapter2	2.3.object_editing.md	"2.3. Editing of scene objects"
create_files	chapter2	2.4.data_structure.md	"2.4. Structure of spatial data"
create_files	chapter3	3.spatial_location.md	"3. Spatial location optimization"
create_files	chapter3	3.1.planar_centroid.md	"3.1. Planar centroid method"
create_files	chapter3	3.2.continous_approx.md	"3.2. Continuous approximation method"
create_files	chapter3	3.3.discrete_location.md	"3.3. Discrete location model"
create_files	chapter3	3.4.lagrangian_relax.md	"3.4. Lagrangian relaxation technology"
create_files	chapter4	4.net_construction.md	"4. Shortest path problem"
create_files	chapter4	4.1.net_topologizing.md	"4.1. Space network topology"
create_files	chapter4	4.2.net_traversing.md	"4.2. Network path traversal"
create_files	chapter4	4.3.shortest_path_model.md	"4.3. Shortest path problem"
create_files	chapter4	4.4.prime_dual.md	"4.4. Labeling method and Prime-Dual principle"
create_files	chapter5	5.net_flow.md	"5. Network flow problem"
create_files	chapter5	5.1.min_net_flow.md	"5.1. Minimum cost flow model"
create_files	chapter5	5.2.benders_decomp.md	"5.2. Benders decomposition technology"
create_files	chapter5	5.3.nonlinear_flow.md	"5.3. Nonlinear network flow"
create_files	chapter5	5.4.space_price_equil.md	"5.4. Space price equilibrium"
create_files	chapter6	6.vehicle_routing_problem.md	"6. Vehicle routing planning"
create_files	chapter6	6.1.cvrp_models.md	"6.1. CVRP mathematical model"
create_files	chapter6	6.2.dw_colgen.md	"6.2. DW decomposition and column generation"
create_files	chapter6	6.3.vrp_algorithm.md	"6.3. Heuristic algorithm design"
create_files	chapter6	6.4.spatial_part.md	"6.4. Spatial Partition Technology"
create_files	chapter7	7.simulation.md	"7. Virtual simulation technology"
create_files	chapter7	7.1.time_scanning.md	"7.1. Time scanning advancement method"
create_files	chapter7	7.2.event_scheduling.md	"7.2. Discrete event scheduling method"
create_files	chapter7	7.3.random_gen.md	"7.3. Data collection and random number generation"
create_files	chapter7	7.4.out_anaylsis.md	"7.4. Output analysis and verification"
create_files	appendix	appedix.md	"Appendix"
create_files	appendix	soft_guide.md	"Software Guide"
create_files	appendix	references.md	"References"
