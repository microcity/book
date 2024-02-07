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
create_files chapter1 1.introduction.md "序言"
create_files chapter2 2.data_processing.md "空间数据处理"
create_files chapter2 2.1.data_processing.md "数据的分类及存储"
create_files chapter2 2.2.spatial_data_intro.md "空间数据的介绍"
create_files chapter2 2.3.spatial_data_edit.md "空间数据的编辑"
create_files chapter2 2.4.spatial_data_proc.md "自动化数据处理"
create_files chapter3 3.net_construction.md "空间网络构建"
create_files chapter3 3.1.net_topologizing.md "网络拓扑化"
create_files chapter3 3.2.net_traversing.md "路径遍历算法"
create_files chapter3 3.3.labelling_algorithm.md "最短路径标号法"
create_files chapter3 3.4.shortest_path_model.md "最短路径模型"
create_files chapter3 3.5.model_algorithm.md "模型算法关系"
create_files chapter4 4.net_flow.md "网络流问题"
create_files chapter4 4.1.min_net_flow.md "最小费用流模型"
create_files chapter4 4.2.multicommodity_flow.md "非线性多商品流"
create_files chapter4 4.3.flow_assignment.md "交通分配问题"
create_files chapter4 4.4.space_price_equil.md "空间价格均衡"
create_files chapter5 5.ocation_problem.md "选址问题"
create_files chapter5 5.1.location_prob_intro.md "选址问题背景"
create_files chapter5 5.2.discrete_location.md "离散选址问题"
create_files chapter5 5.3.continous_location.md "连续选址问题"
create_files chapter5 5.4.ext_location_probs.md "其他扩展问题"
create_files chapter6 6.vehicle_routing_problem.md "车辆路径问题"
create_files chapter6 6.1.vrp_intro.md "车辆路径问题背景"
create_files chapter6 6.2.cvrp_models.md "CVRP数学模型"
create_files chapter6 6.3.vrp_algorithm.md "CVRP求解算法"
create_files chapter6 6.4.other_vrp.md "其他车辆路径问题"
create_files chapter7 7.mip_algorithms.md "大规模整数规划算法设计"
create_files chapter7 7.1.prime_dual.md "标号法及Prime-Dual原理"
create_files chapter7 7.2.lagrangian.md "Lagrangian松弛"
create_files chapter7 7.3.dw_colgen.md "Dantzig–Wolfe分解及列生成"
create_files chapter7 7.4.benders.md "Benders分解原理"
create_files chapter8 8.visual_simulation.md "可视化虚拟仿真技术"
create_files chapter8 8.1.vr_tech.md "三维虚拟现实技术"
create_files chapter8 8.2.time_scanning.md "时间推进法"
create_files chapter8 8.3.event_scheduling.md "事件调度法"
create_files chapter8 8.4.random_gen.md "数据采集与随机数生成"
create_files chapter8 8.5.out_anaylsis.md "输出分析与校核验证"
create_files appendix appedix.md "附录"
create_files appendix soft_guide.md "软件指南"
create_files appendix references.md "参考文献"