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
    border: 1px solid #333333;
    border-collapse: collapse;
    padding: 7px;
  }
  .th {
      background: lightgrey;
  }
  .break-page {
    page-break-after: always;
  }
  .report-block {
    margin: 40px 20px;
  }
  .main-title {
    font-size: 20px;
  }
  .sub-title {
    font-size: 16px;
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
</style>
</head>
<body>
   <#list dcList as list>
    <a name="${list.provName} ${list.dcName}" class="main-title algn-center block">${list.provName} ${list.dcName}</a>
    <#list list.tableList as detail>
        <div class="report-block  break-page" >
          <div>
            <a name="${detail.tableZhName}" class="sub-title">${detail_index + 1}、 ${detail.tableZhName}</a>
            <span>(质量星级:
              <#if detail.qualityStar == 5>
                好
              <#elseif detail.qualityStar == 4 || detail.qualityStar == 3>
                中
              <#else>
                差
              </#if>)
            </span>
          </div>
          <p class="annotation">
            实际上传${detail.sasize}条，正确上传${detail.correctNum}条，共需上传字段${detail.colASize}个，其中异常字段${detail.colM2Size}个，空字段${detail.colM1Size}个
          </p>
          <p class="annotation">
          <#if detail.tableEnName == 'dwd_eda_res_dc_air_conditioner_data_day'>
            <#if detail.idAirInformation == 1>
              其它：与空调静态数据表ID一致；与空调静态数据表条数一致。
            </#if>
            <#if detail.idAirInformation != 1>
              其它：与空调静态数据表ID不一致；与空调静态数据表条数不一致。
            </#if>
          </#if>
          </p>
          <#if detail.stime == -1>
            <p class="annotation">
              该表要求每小时上传一条数据，目前上传频率不符合要求
            </p>
          </#if>
          <#--
            <div>
              <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
                  <tr class="th">
                     <#list detail.abnormalFieldsAdvice as thDetail>
                       <td>${thDetail.colName}</td>
                     </#list>
                  </tr>
                  <tr>
                     <#list detail.abnormalFieldsAdvice as tdDetail>
                       <td>${tdDetail.fieldQualityPercent}</td>
                     </#list>
                  </tr>
              </table>
              <#if detail.attation??>
                <div>${detail.attation}</div>
              </#if>
            </div>
          -->
          <div>
            <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
              <#if detail.abnormalFieldsAdvice?size>
                <tr class="th">
                   <td>异常字段名称</td>
                   <td>为空和异常数占比</td>
                   <td>建议</td>
                </tr>
              </#if>
              <#list detail.abnormalFieldsAdvice as tdDetail>
                 <tr>
                   <td>${tdDetail.colName}</td>
                   <td>${tdDetail.fieldQualityPercent * 100} %</td>
                   <td>${tdDetail.fieldAdvice}</td>
                 </tr>
              </#list>
            </table>
          </div>
        </div>
    </#list>
  </#list>
   <#list roomList as list>
    <a name="${list.provName} ${list.dcName} ${list.roomName}" class="main-title algn-center block">${list.provName} ${list.dcName} ${list.roomName}</a>
    <#list list.tableList as detail>    
        <div class="report-block  break-page" >
          <div>
            <a name="${detail.tableZhName}" class="sub-title">${detail_index + 1}、 ${detail.tableZhName}</a>
            <span>(质量星级: 
              <#if detail.qualityStar == 5>
                好
              <#elseif detail.qualityStar == 4 || detail.qualityStar == 3>
                中
              <#else>
                差
              </#if>)
            </span>
          </div>
          <p class="annotation">
            实际上传${detail.sasize}条，正确上传${detail.correctNum}条，共需上传字段${detail.colASize}个，其中异常字段${detail.colM2Size}个，空字段${detail.colM1Size}个
          </p>
          <p class="annotation">
          <#if detail.tableEnName == 'dwd_eda_res_dc_air_conditioner_data_day'>
            <#if detail.idAirInformation == 1>
              其它：与空调静态数据表ID一致；与空调静态数据表条数一致。
            </#if>
            <#if detail.idAirInformation != 1>
              其它：与空调静态数据表ID不一致；与空调静态数据表条数不一致。
            </#if>
          </#if>
          </p>
          <#if detail.stime == -1>
            <p class="annotation">
              该表要求每小时上传一条数据，目前上传频率不符合要求
            </p>
          </#if>
          <#--
            <div>
              <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
                  <tr class="th">
                     <#list detail.abnormalFieldsAdvice as thDetail>
                       <td>${thDetail.colName}</td>
                     </#list>
                  </tr>
                  <tr>
                     <#list detail.abnormalFieldsAdvice as tdDetail>
                       <td>${tdDetail.fieldQualityPercent}</td>
                     </#list>
                  </tr>
              </table>
              <#if detail.attation??>
                <div>${detail.attation}</div>
              </#if>
            </div>
          -->
          <div>
            <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
              <#if detail.abnormalFieldsAdvice?size>
                <tr class="th">
                   <td>异常字段名称</td>
                   <td>为空和异常数占比</td>
                   <td>建议</td>
                </tr>
              </#if>
              <#list detail.abnormalFieldsAdvice as tdDetail>
                 <tr>
                   <td>${tdDetail.colName}</td>
                   <td>${tdDetail.fieldQualityPercent * 100} %</td>
                   <td>${tdDetail.fieldAdvice}</td>
                 </tr>
              </#list>
            </table>
          </div>
        </div>
    </#list>
  </#list>
</body>
</html>