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
create_files . preface.md "前言"
create_files chapter1 1.introduction.md "1. 序言"
create_files chapter2 2.data_processing.md "2. 空间数据处理"
create_files chapter2 2.1.data_classify.md "2.1. 空间数据的分类"
create_files chapter2 2.2.projection.md "2.2. 坐标系及投影显示"
create_files chapter2 2.3.object_editing.md "2.3. 场景对象的编辑"
create_files chapter2 2.4.data_structure.md "2.4. 空间数据的结构"
create_files chapter3 3.spatial_location.md "3. 空间选址优化"
create_files chapter3 3.1.planar_centroid.md "3.1. 平面重心方法"
create_files chapter3 3.2.continous_approx.md "3.2. 连续近似方法"
create_files chapter3 3.3.discrete_location.md "3.3. 离散选址模型"
create_files chapter3 3.4.lagrangian_relax.md "3.4. Lagrangian松弛技术"
create_files chapter3 3.net_construction.md "3. 最短路径问题"
create_files chapter3 3.1.net_topologizing.md "3.1. 空间网络拓扑"
create_files chapter3 3.2.net_traversing.md "3.2. 网络路径遍历"
create_files chapter3 3.4.shortest_path_model.md "3.3. 最短路径问题"
create_files chapter3 3.4.prime_dual.md "3.4. 标号法及Prime-Dual原理"
create_files chapter4 4.net_flow.md "4. 网络流问题"
create_files chapter4 4.1.min_net_flow.md "4.1. 最小费用流模型"
create_files chapter4 4.2.benders_decomp.md "4.2. Benders分解技术"
create_files chapter4 4.3.nonlinear_flow.md "4.3. 非线性网络流"
create_files chapter4 4.4.space_price_equil.md "4.4. 空间价格均衡"
create_files chapter5 5.vehicle_routing_problem.md "5. 车辆路径规划"
create_files chapter5 5.1.cvrp_models.md "5.1. CVRP数学模型"
create_files chapter5 5.2.dw_colgen.md "5.2. DW分解及列生成"
create_files chapter5 5.3.vrp_algorithm.md "5.3. 启发式算法设计"
create_files chapter5 5.4.spatial_part.md "5.4. 空间分区技术"
create_files chapter6 6.simulation.md "6. 虚拟仿真技术"
create_files chapter6 6.1.time_scanning.md "6.1. 时间扫描推进法"
create_files chapter6 6.2.event_scheduling.md "6.2. 离散事件调度法"
create_files chapter6 6.3.random_gen.md "6.3. 数据采集与随机数生成"
create_files chapter6 6.4.out_anaylsis.md "6.4. 输出分析与校核验证"
create_files appendix appedix.md "附录"
create_files appendix soft_guide.md "软件指南"
create_files appendix references.md "参考文献"