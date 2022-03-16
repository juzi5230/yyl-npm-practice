<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
<title></title>
<style type="text/css">
  body {
    font-family: SimSun;
    font-size: 12px;
  }
  body { -webkit-print-color-adjust: exact; }
  table {
    border-collapse: collapse;
    border-spacing: 0;
  }
  .table {
    margin-top: 0;
    margin-right: auto;
    margin-bottom: 80;
    margin-left: auto;
  }
  .table td {
    height: 44px;
    line-height: 44px;
  }
  .table-content {
    font-size: 14px;
    border: none;
    border-bottom-style: solid;
    border-bottom-width: 1px;
    border-bottom-color: rgba(0, 0, 0, 0.1);
    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  }
  .table-content td {
    padding-left: 13px;
  }
  .params {
    font-weight: 600;
  }
  .th {
    background: rgba(165,167,162,.685);
    text-align: center;
    border-style: solid;
    border-width: 1px;
    border-color: rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(0, 0, 0, 0.1);
  }
  .th.question-detail {
    text-align: left;
    background: rgba(94,94,94,.15);
  }
  .question-detail td {
    padding-left: 13px;
  }
  .report-block {
    margin: 0 20px 23px;
    position: relative;
    font-size: 0;
  }
  .main-title {
    font-size: 24px;
    font-weight: 600;
  }
  .sub-title {
    font-size: 18px;
    font-weight: 600;
  }
  .algn-center {
    text-align: center;
  }
  .block {
    display: block;
  }
  a {
    text-decoration: none;
    color: black;
  }
  a:link {
    text-decoration: none;
  }
  a:visited {
    text-decoration: none;
  }
  a:hover {
    text-decoration: none;
  }
  a:active {
    text-decoration: none;
  }
  .cleanfloat {
    display: inline-block;
  }
  .cleanfloat::after{
    display: block;
    clear: both;
    content:"";
    visibility: hidden;
    height: 0;
  }
  .cleanfloat span {
    font-size: 16px;
    margin:3px;
  }
  .hs,.cs{color:#f7ce46;}
  .data-quality {
    font-size: 14px;
    font-weight: 600;
  }
  .annotation {
    font-size: 14px;
    font-weight: 600;
  }
  .attention {
    margin: 0 20px 23px;
  }
  .attention-th {
    font-size: 14px;
    font-weight: 600;
    position: relative;
  }
  .attention .title {
    text-align: center;
    font-size: 14px;
    margin: 20px;
  }
  .quality-container {
    position: absolute;
    line-height: 45px;
    margin-left: 13px;
  }
  .abnormal {
    font-size: 14px;
    padding-left: 13px;
  }
  .abnormal-th td{
    border: 1px solid rgba(0, 0, 0, 0.1);
  }
  .abnormal-th td:first-child {
    border-left: none;
  }
  .abnormal-th td:last-child {
    border-right: none;
  }
  .abnormal-size {
    font-size: 12px;
    height: 30px!important;
    line-height: 30px!important;
  }
  .attention .padding0 {
    padding-left: 0;
  }
  .align-left {
    padding-left: 13px;
    text-align: left;
  }
  .colNum {
    padding-left: 0;
    width: 40px;
  }
</style>
</head>
<body>
    <a name="${data.provName} ${data.dcName}" class="main-title algn-center block">${data.provName}${data.dcName}</a>
    <div class="attention">
      <div class="title">本文档使用的异常类型术语一览表</div>
      <#assign tableMapTh=['范围异常', '定值异常', '值异常', '额定风速小于最小风速']/>
      <#assign tableMapTd=["该设备或信号上传的数据不符合正常情况时数据的范围","该设备或信号上传的动态数据，全天所有数据为一个固定值，事实上，动态数据会随着时间的推移有所波动","该设备或信号上传的数据为空或不符合数据字段类型要求","空调风机额定转速百分比小于空调最小风机转速百分比，违背正常空调设置逻辑"]/>
      <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
        <tr class="th attention-th question-detail">
          <td class="algn-center colNum">序号</td>
          <td>异常类型</td>
          <td>解释</td>
        </tr>
        <#list tableMapTh as tdDetail>
           <tr class="table-content abnormal-th">
            <td class="abnormal-size algn-center padding0">${tdDetail_index + 1}</td>
            <td class="abnormal-size">${tdDetail}</td>
            <td class="abnormal-size">${tableMapTd[tdDetail_index]}</td>
           </tr>
        </#list>
      </table>
    </div>
    <#list data.dcTableList as detail>
        <div class="report-block">
          <div>
            <a name="${detail.tableZhName}" class="sub-title">${detail_index + 1}、 ${detail.tableZhName}</a>
          </div>
          <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
            <tr class="th sub-title">
              <td colspan=5 >
                <div class="quality-container">
                  <span class="data-quality">(数据质量: 
                    <#if detail.qualityStar == 5 ||detail.qualityStar == 4>
                      优
                    <#elseif detail.qualityStar == 3 || detail.qualityStar == 2>
                      中
                    <#else>
                      差
                    </#if>)
                  </span>
                  <span class="cleanfloat">
                      <#list 1..5 as a>
                       <#if (a_index + 1 lte detail.qualityStar)>
                        <#-- <#if a_index + 1 lte detail.qualityStar>-->
                          <span class="cs">&#9733;</span>
                        </#if>
                      </#list>
                  </span>
                </div>
              ${detail.tableZhName}质量评估</td>
            </tr>
            <tr class="table-content params">
               <td>实际上传记录条数/条</td>
               <td>正确上传记录条数/条</td>
               <td>共需上传字段个数/个</td>
               <td>异常字段个数/个</td>
               <td>空字段个数/个</td>
            </tr>
            <tr class="table-content">
              <td>${detail.sasize}</td>
              <td>${detail.correctNum}</td>
              <td>${detail.colASize}</td>
              <td>${detail.colM2Size}</td>
              <td>${detail.colM1Size}</td>
            </tr>
          </table>
          <#if detail.tableEnName == 'dwd_eda_res_dc_air_conditioner_data_day'>
            <#if detail.idAirInformation == 1>
              <p class="annotation">其它：与空调静态数据表ID一致；与空调静态数据表条数一致。</p>
            </#if>
            <#if detail.idAirInformation != 1>
              <p class="annotation">其它：与空调静态数据表ID不一致；与空调静态数据表条数不一致。</p>
            </#if>
          </#if>
          <#if detail.stime == -1>
            <p class="annotation">
              该表要求每小时上传一条数据，目前上传频率不符合要求
            </p>
          </#if>

          <#if (detail.abnormalFieldsAdvice?size > 0)>
          <#--<#if detail.abnormalFieldsAdvice?size > 0>-->
            <div>
              <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
                  <tr class="th sub-title">
                    <td colspan=3 >问题明细</td>
                  </tr>
                  <tr class="table-content params">
                     <td>异常字段名称</td>
                     <td>为空和异常数占比</td>
                     <td>建议</td>
                  </tr>
                <#list detail.abnormalFieldsAdvice as tdDetail>
                   <tr class="table-content">
                     <td>${tdDetail.colName}</td>
                     <td>${tdDetail.fieldQualityPercent}</td>
                     <td>${tdDetail.fieldAdvice}</td>
                   </tr>
                </#list>
              </table>
            </div>
          </#if>
          <#if (detail.devList && detail.devList?size > 0)>
          <#--<#if detail.devList && detail.devList?size > 0>-->
            <div>
              <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
                  <tr class="th sub-title question-detail">
                    <td colspan=15 >问题明细</td>
                  </tr>
                  <tr class="table-content params abnormal-th" rowspan=1>
                     <td>设备ID</td>
                     <td>异常字段</td>
                     <td>异常类型</td>
                     <td>错误数/已上传数</td>
                     <td>异常值示例[最小值，最大值]</td>
                  </tr>
                <#list detail.devList as tdDetail>
                   <tr class="table-content abnormal-th">
                    <#if tdDetail_index === 0 || tdDetail.devId !== detail.devList[tdDetail_index - 1].devId>
                      <td class="abnormal-size" rowspan=${tdDetail.errColNum}>${tdDetail.devId}</td>
                    </#if>
                     <td class="abnormal-size">
					           <#if tdDetail.colName == "-1">空值
					             <#else>
					         	${tdDetail.colName}
					           </#if>
					         </td>
                   <td class="abnormal-size">
					           <#if tdDetail.errType == "-1">空值
					             <#else>
					         	${tdDetail.errType}
					           </#if>					
					         </td>
                   <td class="abnormal-size">${tdDetail.errValueNmu}/${tdDetail.sumColMSize}</td>
                   <td class="abnormal-size">[
					           <#if tdDetail.minVal == -1.0>空值
					             <#else>
					         	${tdDetail.minVal}
					           </#if>
					         ,
					           <#if tdDetail.maxVal == -1.0>空值
					             <#else>
					         	${tdDetail.maxVal}
					           </#if>
					           ] (
					           <#if tdDetail.colUnit == "-1">
                       ${''}
					             <#else>
					         	   ${tdDetail.colUnit}
					           </#if>)
					           </td>
                   </tr>
                </#list>
              </table>
            </div>
          </#if>
        </div>
    </#list>
</body>
</html>