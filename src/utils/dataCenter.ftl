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
    border-collapse: collapse;
    padding: 7px;
  }
  .table-content {
    border: none;
    border-bottom: 1px solid #f1f1;
  }
  .th {
      background: #f1f1f1;
      text-align: center;
      border: 1px solid #cccccc;
  }
  .report-block {
    margin: 20px;
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
  .cleanfloat {
    display: inline-block;
  }
  .cleanfloat::after{
    display: block;
    clear: both;
    content:"";
    visibility: hidden;
    height: 0;
  }/*清浮动*/
  ul li {
    list-style:none;
    float:left;
    font-size: 12px;
    margin:5px;
    color:#ccc;
    cursor:pointer;
  }/*五角星样式*/
  .hs,.cs{color:#f00;}
</style>
</head>
<body>
    <a name="${data.provName} ${data.dcName}" class="main-title algn-center block">${data.provName} ${data.dcName}</a>
    <#list data.dcTableList as detail>
        <div class="report-block">
          <div>
            <a name="${detail.tableZhName}" class="sub-title">${detail_index + 1}、 ${detail.tableZhName}</a>
            <span>(质量星级:
              <ul class="cleanfloat">
                  <#list 1..5 as a>
                    <#if a_index + 1 lte detail.qualityStar>
                      <li class="cs">&#9733;</li>
                    <#else>
                      <li class="">&#9733;</li>
                    </#if>
                  </#list>
              </ul>
              <#if detail.qualityStar == 5>
                好
              <#elseif detail.qualityStar == 4 || detail.qualityStar == 3>
                中
              <#else>
                差
              </#if>)
            </span>
          </div>

          <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
            <tr class="th sub-title">
              <td colspan=5 >${detail.tableZhName}质量评估</td>
            </tr>
            <tr class="table-content">
               <td>实际上传/条</td>
               <td>正确上传/条</td>
               <td>共需上传字段/条</td>
               <td>异常字段/条</td>
               <td>空字段/条</td>
            </tr>
            <tr class="table-content">
              <td>${detail.sasize}</td>
              <td>${detail.correctNum}</td>
              <td>${detail.colASize}</td>
              <td>${detail.colM2Size}</td>
              <td>${detail.colM1Size}</td>
            </tr>
          </table>
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

          <div>
            <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
              <#if detail.abnormalFieldsAdvice?size>
                <tr class="th sub-title">
                  <td colspan=3 >问题明细</td>
                </tr>
                <tr class="table-content">
                   <td>异常字段名称</td>
                   <td>为空和异常数占比</td>
                   <td>建议</td>
                </tr>
              </#if>
              <#list detail.abnormalFieldsAdvice as tdDetail>
                 <tr class="table-content">
                   <td>${tdDetail.colName}</td>
                   <td>${tdDetail.fieldQualityPercent * 100}%</td>
                   <td>${tdDetail.fieldAdvice}</td>
                 </tr>
              </#list>
            </table>
          </div>
        </div>
    </#list>
</body>
</html>