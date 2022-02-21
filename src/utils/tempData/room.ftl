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
  .qualityStar {
    position: absolute;
    top: 25px;
    line-height: 45px;
    left: 100px;
  }
  .qualityStar::after{
    display: block;
    clear: both;
    content:"";
    visibility: hidden;
    height: 0;
  }
  .qualityStar span {
    font-size: 16px;
    margin:3px;
    // position: absolute;
  }
  .hs,.cs{color:#f7ce46;}
  .data-quality {
    font-size: 14px;
    font-weight: 600;
    position: absolute;
    top: 25px;
    left: 13px;
    line-height: 45px;
  }
  .annotation {
    font-size: 14px;
    font-weight: 600;
  }
  .th.question-detail {
    text-align: left;
    background: rgba(94,94,94,.15);
  }
  .question-detail td {
    padding-left: 13px;
  }
  .abnormal {
    font-size: 14px;
    padding-left: 13px;
  }
  .abnormal-size {
    font-size: 12px;
    height: 30px!important;
    line-height: 30px!important;
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
</style>
</head>

<body>

    <script>
      var s = '2131231';
    <#list data.tableList as detail>
      //document.querySelect('.report-block')[detail_index]
      console.log('>>>>>>>>>>>>>>>>>>>>>>>>>>', detail)
    </#list>
    </script>
    <a name="${data.roomName}" class="main-title algn-center block">${data.roomName}</a>
    <#list data.tableList as detail>    
        <div class="report-block">
          <div>
            <a name="${detail.tableZhName}" class="sub-title">${detail_index + 1}、 ${detail.tableZhName}</a>
            <span class="qualityStar">
                <#list 1..5 as a>
                  <!--<#if (a_index + 1 lte detail.qualityStar)>-->
                  <#if a_index + 1 lte detail.qualityStar>
                    <span class="cs">&#9733;</span>
                  </#if>
                </#list>
            </span>
            <span class="data-quality">(数据质量: 
              <#if detail.qualityStar == 5 ||detail.qualityStar == 4>
                优
              <#elseif detail.qualityStar == 3 || detail.qualityStar == 2>
                中
              <#else>
                差
              </#if>)
            </span>
          </div>
          <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
            <tr class="th sub-title">
              <td colspan=5>${detail.tableZhName}质量评估</td>
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
              <p class="annotation">数据要求：与空调静态数据表ID一致；与空调静态数据表条数一致。</p>
            </#if>
            <#if detail.idAirInformation == 2>
              <p class="annotation">数据要求：与空调静态数据表ID不一致；与空调静态数据表条数不一致。</p>
            </#if>
          </#if>
          <#if detail.stime == -1>
            <p class="annotation">
              数据要求：该表要求每小时上传一条数据，目前上传频率不符合要求
            </p>
          </#if>
          <!--<#if (detail.abnormalFieldsAdvice?size > 0)>-->
          <#if detail.abnormalFieldsAdvice?size > 0>
            <div>
              <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
                  <tr class="th sub-title question-detail">
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
            <div>
              <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
                  <tr class="th sub-title question-detail">
                    <td colspan=15 >问题明细</td>
                  </tr>
                  <tr><td colspan=15 class="abnormal">122313132</td></tr>
                  <tr><td colspan=15 class="abnormal">122313132</td></tr>
                  <tr class="table-content params abnormal-th" rowspan=1>
                     <td>设备ID</td>
                     <td>异常字段</td>
                     <td>异常类型</td>
                     <td>错误数/已上传数</td>
                     <td>异常值示例[最小值，最大值]</td>
                  </tr>
                <#list detail.abnormalFieldsAdvice1 as tdDetail>
                   <tr class="table-content abnormal-th">
                    <#if tdDetail.rowspan > 0>
                      <td class="abnormal-size" rowspan=${tdDetail.rowspan}>${tdDetail.id}.......${detail.abnormalFieldsAdvice1[tdDetail_index]['rowspan']}</td>
                    </#if>
                    <td class="abnormal-size">${tdDetail.colName}</td>
                    <td class="abnormal-size">${tdDetail.type}</td>
                    <td class="abnormal-size">${tdDetail.count}</td>
                    <td class="abnormal-size">${tdDetail.example}</td>
                   </tr>
                </#list>
              </table>
            </div>
          </#if>
        </div>
    </#list>
</body>
</html>