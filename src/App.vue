<template>
  <div>
    <!-- <yylnpmpractice :propData='initData'/> -->
  </div>
</template>

<script>
import yylnpmpractice from './yyl-npm-practice'
// import test2 from '/Users/cheng/workspace/yyl-npm-practice/src/utils/test2.ftl'
import test2 from '/Users/cheng/workspace/yyl-npm-practice/src/utils/computerRoom.ftl'
// import test2 from '/Users/chengcheng/gitworkspace/yyl-npm-practice/src/utils/test2.ftl'
// import test2 from '/Users/cheng/workspace/yyl-npm-practice/src/utils/1a1112.ftl '
import a from './utils/a'
import $ from './utils/jquery'
export default {
    data(){
      return {
        initData: 'hello 你好.....',
        data1: {
          reportName: '浙江宁波IDC数据中心数据质量报告', 
          data: [
            {
              title: '数据中心数据质量报告1',
              children: [
                {
                  title: '水冷系统静态资产数据1',
                  assessment: {
                    quality: '优',
                    th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                    detail: [100, 80, 300, 100, 100],
                    attation: '数据要求：该表要求每小时上传一条数据，目前上传频率不符合要求'
                  },
                  details: {
                    quality: '优',
                    th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                    detail: [100, 80, 300, 100, 100]
                  }
                },
                {
                  title: '水冷系统静态资产数据11',
                  assessment: {
                    quality: '优',
                    th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                    detail: [100, 80, 300, 100, 100]
                  }
                }
              ]
            },
            {
              title: '数据中心数据质量报告2',
              children: [
                {
                  title: '水冷系统静态资产数据2',
                  assessment: {
                    quality: '优',
                    th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                    detail: [100, 80, 300, 100, 100]
                  }
                }
              ]
            },
            {
              title: '数据中心数据质量报告3',
              children: [
                {
                  title: '水冷系统静态资产数据3',
                  assessment: {
                    quality: '优',
                    th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                    detail: [100, 80, 300, 100, 100]
                  }
                }
              ]
            }
          ]},
        computerData: {
        "roomList": [
            {
                "dcId": "ZJ-0575-SXQFCIDC",
                "dcName": "轻纺城数据中心",
                "provName": "绍兴市",
                "roomId": "ZJ-0575-SXQFCIDC-S1E",
                "roomName": "绍兴轻纺城南1东机房",
                "tableList": [
                    {
                        "tableEnName": "dwd_eda_res_dc_elec_power_day",
                        "tableZhName": "每日用电量",
                        "correctNum": 0,
                        "colASize": 6,
                        "colM1Size": 2,
                        "colM2Size": 2,
                        "dataQualityPercent": 0.6667,
                        "qualityStar": "4",
                        "subTbName": "-1",
                        "idAirInformation": 1,
                        "abnormalFieldsAdvice": [
                            {
                                "errorCol": "it_power",
                                "colName": "IT设备总能耗",
                                "fieldAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                                "exceptionAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                                "nullAdvice": "请加装机房IT设备总电表，或将机房所有列头柜能耗加和",
                                "fieldQualityPercent": 0.6667
                            },
                            {
                                "errorCol": "air_power",
                                "colName": "空调总能耗",
                                "fieldAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                                "exceptionAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                                "nullAdvice": "请加装机房空调总电表，或将机房所有空调能耗加和",
                                "fieldQualityPercent": 0.6667
                            }
                        ],
                        "sasize": 2,
                        "stime": 0
                    },
                    {
                        "tableEnName": "dwd_eda_res_dc_static_day",
                        "tableZhName": "数据中心及机房静态数据",
                        "correctNum": 0,
                        "colASize": 256,
                        "colM1Size": 128,
                        "colM2Size": 0,
                        "dataQualityPercent": 0.5,
                        "qualityStar": "3",
                        "subTbName": "-1",
                        "idAirInformation": -1,
                        "abnormalFieldsAdvice": [
                            {
                                "errorCol": "sealing_status",
                                "colName": "冷热封闭",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "airfloor_num",
                                "colName": "出风地板数量",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "floor_height",
                                "colName": "地板高度",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "elec_price",
                                "colName": "平均电价",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "dc_name",
                                "colName": "数据中心名称",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "room_num",
                                "colName": "数据中心机房总数",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "dc_contact",
                                "colName": "数据中心节能负责人",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "dc_tel",
                                "colName": "数据中心负责人电话",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "dc_mail",
                                "colName": "数据中心负责人邮箱",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "room_type",
                                "colName": "机房制冷方式",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "room_name",
                                "colName": "机房名称",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "dc_area",
                                "colName": "机房面积",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "room_height",
                                "colName": "机房高度",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "rack_num",
                                "colName": "机柜数量",
                                "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "air_num",
                                "colName": "空调数量",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            },
                            {
                                "errorCol": "air_type",
                                "colName": "送风形式",
                                "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                                "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                                "fieldQualityPercent": 0.5
                            }
                        ],
                        "sasize": 16,
                        "stime": 0
                    },
                    {
                        "tableEnName": "air_dwd_eda_res_dc_current_voltage_day",
                        "tableZhName": "空调电压电流数据",
                        "correctNum": 0,
                        "colASize": 499392,
                        "colM1Size": 474912,
                        "colM2Size": 0,
                        "dataQualityPercent": 0.951,
                        "qualityStar": "5",
                        "subTbName": "dev_type_1",
                        "idAirInformation": null,
                        "abnormalFieldsAdvice": [
                            {
                                "errorCol": "active_power",
                                "colName": "有功功率",
                                "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                                "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "fieldQualityPercent": 0.951
                            },
                            {
                                "errorCol": "voltage",
                                "colName": "电压",
                                "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                                "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "fieldQualityPercent": 0.951
                            },
                            {
                                "errorCol": "ele_currnt",
                                "colName": "电流",
                                "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                                "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "fieldQualityPercent": 0.951
                            },
                            {
                                "errorCol": "energy",
                                "colName": "耗电量",
                                "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                                "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                                "fieldQualityPercent": 0.951
                            }
                        ],
                        "sasize": 83232,
                        "stime": 1
                    },
                    {
                        "tableEnName": "columcabinet_dwd_eda_res_dc_current_voltage_day",
                        "tableZhName": "列头柜电压电流数据",
                        "correctNum": 0,
                        "colASize": 623808,
                        "colM1Size": 284544,
                        "colM2Size": 0,
                        "dataQualityPercent": 0.4561,
                        "qualityStar": "3中",
                        "subTbName": "dev_type_2",
                        "idAirInformation": null,
                        "abnormalFieldsAdvice": [],
                        "sasize": 103968,
                        "stime": 1
                    },
                    {
                        "tableEnName": "cabinet_dwd_eda_res_dc_current_voltage_day",
                        "tableZhName": "机柜电压电流数据",
                        "correctNum": 0,
                        "colASize": 74043072,
                        "colM1Size": 31954176,
                        "colM2Size": 0,
                        "dataQualityPercent": 0.4316,
                        "qualityStar": "3中",
                        "subTbName": "dev_type_3",
                        "idAirInformation": null,
                        "abnormalFieldsAdvice": [],
                        "sasize": 12340512,
                        "stime": 1
                    },
                    {
                        "tableEnName": "dwd_eda_res_dc_air_connd_day",
                        "tableZhName": "末端精密空调资产数据",
                        "correctNum": 0,
                        "colASize": 425,
                        "colM1Size": 85,
                        "colM2Size": 0,
                        "dataQualityPercent": 0.2,
                        "qualityStar": "2中",
                        "subTbName": "-1",
                        "idAirInformation": null,
                        "abnormalFieldsAdvice": [],
                        "sasize": 85,
                        "stime": 0
                    },
                    {
                        "tableEnName": "dwd_eda_res_dc_air_conditioner_data_day",
                        "tableZhName": "空调运行参数数据",
                        "correctNum": 0,
                        "colASize": 561816,
                        "colM1Size": 235008,
                        "colM2Size": 0,
                        "dataQualityPercent": 0.4183,
                        "qualityStar": "3中",
                        "subTbName": "-1",
                        "idAirInformation": 1,
                        "abnormalFieldsAdvice": [],
                        "sasize": 62424,
                        "stime": 1
                    }
                ],
                "mcreateTime": null
            },
            {
                "dcId": "ZJ-0575-SXQFCIDC",
                "dcName": "轻纺城数据中心",
                "provName": "绍兴市",
                "roomId": "ZJ-0575-SXQFCIDC-S3W",
                "roomName": "绍兴轻纺城南3西机房",
                "tableList": [
                  {
                      "tableEnName": "dwd_eda_res_dc_elec_power_day",
                      "tableZhName": "每日用电量",
                      "correctNum": 0,
                      "colASize": 6,
                      "colM1Size": 2,
                      "colM2Size": 2,
                      "dataQualityPercent": 0.6667,
                      "qualityStar": "4好",
                      "subTbName": "-1",
                      "idAirInformation": -1,
                      "abnormalFieldsAdvice": [
                          {
                              "errorCol": "it_power",
                              "colName": "IT设备总能耗",
                              "fieldAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                              "exceptionAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                              "nullAdvice": "请加装机房IT设备总电表，或将机房所有列头柜能耗加和",
                              "fieldQualityPercent": 0.6667
                          },
                          {
                              "errorCol": "air_power",
                              "colName": "空调总能耗",
                              "fieldAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                              "exceptionAdvice": "请检查电表读数是否异常，或加和计算是否正确，或单位是否与数据规范一致。",
                              "nullAdvice": "请加装机房空调总电表，或将机房所有空调能耗加和",
                              "fieldQualityPercent": 0.6667
                          }
                      ],
                      "sasize": 2,
                      "stime": 0
                  },
                  {
                      "tableEnName": "dwd_eda_res_dc_micr_temp_day",
                      "tableZhName": "机柜温度数据",
                      "correctNum": 0,
                      "colASize": 29203200,
                      "colM1Size": 29203200,
                      "colM2Size": 0,
                      "dataQualityPercent": 1.0,
                      "qualityStar": "1差",
                      "subTbName": "-1",
                      "idAirInformation": 1,
                      "abnormalFieldsAdvice": [
                          {
                              "errorCol": "temp",
                              "colName": "温度",
                              "fieldAdvice": "建议增加温度传感器，并把采集值接入动环。最低要求，对于封闭冷池每个通道3个采集点；对于非封闭冷池，平均两个机柜前后各1个采集点。",
                              "exceptionAdvice": "请核查传感器信号是否异常",
                              "nullAdvice": "建议增加温度传感器，并把采集值接入动环。最低要求，对于封闭冷池每个通道3个采集点；对于非封闭冷池，平均两个机柜前后各1个采集点。",
                              "fieldQualityPercent": 1.0
                          }
                      ],
                      "sasize": 14601600,
                      "stime": 1
                  },
                  {
                      "tableEnName": "dwd_eda_res_dc_static_day",
                      "tableZhName": "数据中心及机房静态数据",
                      "correctNum": 0,
                      "colASize": 256,
                      "colM1Size": 128,
                      "colM2Size": 0,
                      "dataQualityPercent": 0.5,
                      "qualityStar": "3中",
                      "subTbName": "-1",
                      "idAirInformation": null,
                      "abnormalFieldsAdvice": [
                          {
                              "errorCol": "sealing_status",
                              "colName": "冷热封闭",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "airfloor_num",
                              "colName": "出风地板数量",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "floor_height",
                              "colName": "地板高度",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "elec_price",
                              "colName": "平均电价",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "dc_name",
                              "colName": "数据中心名称",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "room_num",
                              "colName": "数据中心机房总数",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "dc_contact",
                              "colName": "数据中心节能负责人",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "dc_tel",
                              "colName": "数据中心负责人电话",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "dc_mail",
                              "colName": "数据中心负责人邮箱",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "room_type",
                              "colName": "机房制冷方式",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "room_name",
                              "colName": "机房名称",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "dc_area",
                              "colName": "机房面积",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "room_height",
                              "colName": "机房高度",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "rack_num",
                              "colName": "机柜数量",
                              "fieldAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "air_num",
                              "colName": "空调数量",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          },
                          {
                              "errorCol": "air_type",
                              "colName": "送风形式",
                              "fieldAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "exceptionAdvice": "请根据数据中心机房实际情况核实该值的准确性。",
                              "nullAdvice": "请根据数据中心机房实际情况整理和填写，必要时可参照省内IDC资源管理系统",
                              "fieldQualityPercent": 0.5
                          }
                      ],
                      "sasize": 16,
                      "stime": 0
                  },
                  {
                      "tableEnName": "air_dwd_eda_res_dc_current_voltage_day",
                      "tableZhName": "空调电压电流数据",
                      "correctNum": 0,
                      "colASize": 442368,
                      "colM1Size": 437760,
                      "colM2Size": 0,
                      "dataQualityPercent": 0.9896,
                      "qualityStar": "5好",
                      "subTbName": "dev_type_1",
                      "idAirInformation": null,
                      "abnormalFieldsAdvice": [
                          {
                              "errorCol": "active_power",
                              "colName": "有功功率",
                              "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "fieldQualityPercent": 0.9896
                          },
                          {
                              "errorCol": "voltage",
                              "colName": "电压",
                              "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "fieldQualityPercent": 0.9896
                          },
                          {
                              "errorCol": "ele_currnt",
                              "colName": "电流",
                              "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "fieldQualityPercent": 0.9896
                          },
                          {
                              "errorCol": "energy",
                              "colName": "耗电量",
                              "fieldAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "空调：请加装空调电表，并将采集值接入动环",
                              "fieldQualityPercent": 0.9896
                          }
                      ],
                      "sasize": 73728,
                      "stime": 1
                  },
                  {
                      "tableEnName": "columcabinet_dwd_eda_res_dc_current_voltage_day",
                      "tableZhName": "列头柜电压电流数据",
                      "correctNum": 0,
                      "colASize": 623808,
                      "colM1Size": 262656,
                      "colM2Size": 0,
                      "dataQualityPercent": 0.4211,
                      "qualityStar": "3中",
                      "subTbName": "dev_type_2",
                      "idAirInformation": null,
                      "abnormalFieldsAdvice": [],
                      "sasize": 103968,
                      "stime": 1
                  },
                  {
                      "tableEnName": "cabinet_dwd_eda_res_dc_current_voltage_day",
                      "tableZhName": "机柜电压电流数据",
                      "correctNum": 0,
                      "colASize": 47044800,
                      "colM1Size": 15919200,
                      "colM2Size": 0,
                      "dataQualityPercent": 0.3384,
                      "qualityStar": "2中",
                      "subTbName": "dev_type_3",
                      "idAirInformation": null,
                      "abnormalFieldsAdvice": [],
                      "sasize": 7840800,
                      "stime": 1
                  },
                  {
                      "tableEnName": "dwd_eda_res_dc_air_connd_day",
                      "tableZhName": "末端精密空调资产数据",
                      "correctNum": 0,
                      "colASize": 400,
                      "colM1Size": 80,
                      "colM2Size": 0,
                      "dataQualityPercent": 0.2,
                      "qualityStar": "2中",
                      "subTbName": "-1",
                      "idAirInformation": null,
                      "abnormalFieldsAdvice": [],
                      "sasize": 80,
                      "stime": 0
                  },
                  {
                      "tableEnName": "dwd_eda_res_dc_air_conditioner_data_day",
                      "tableZhName": "空调运行参数数据",
                      "correctNum": 0,
                      "colASize": 497664,
                      "colM1Size": 297216,
                      "colM2Size": 0,
                      "dataQualityPercent": 0.5972,
                      "qualityStar": "3中",
                      "subTbName": "-1",
                      "idAirInformation": 1,
                      "abnormalFieldsAdvice": [
                          {
                              "errorCol": "return_t",
                              "colName": "回风温度",
                              "fieldAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "cp_status",
                              "colName": "开关状态",
                              "fieldAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "fan_min_power",
                              "colName": "水阀开度",
                              "fieldAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "setting_t",
                              "colName": "设定温度",
                              "fieldAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "setting_h",
                              "colName": "设定湿度",
                              "fieldAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "fd_degree_set",
                              "colName": "阀门开度设定值",
                              "fieldAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "fan_rated_power",
                              "colName": "风机最小功率",
                              "fieldAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "fan_speed",
                              "colName": "风机转速",
                              "fieldAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          },
                          {
                              "errorCol": "fd_degree",
                              "colName": "风机额定功率",
                              "fieldAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "exceptionAdvice": "请核查采集器信号是否异常，或单位是否与数据规范一致。",
                              "nullAdvice": "建议核对动环系统，是否将该参数上传；如果动环系统取不到，请省公司协调动环厂商完成改参数的接入",
                              "fieldQualityPercent": 0.5972
                          }
                      ],
                      "sasize": 55296,
                      "stime": 1
                  }
                ],
                "mcreateTime": null
            }
          ]
        }
      }
    },
    components:{
      yylnpmpractice
    },
    mounted () {
      // document.querySelector('#app').innerHTML = test2({    propA: 'valA',    propB: 'valB'})
      // debugger
      let _this = this
      $('body').html(test2(_this.computerData));
    }
}
</script>

<style>

</style>