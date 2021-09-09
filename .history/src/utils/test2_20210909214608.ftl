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

table {
    border-collapse: collapse;
    border-spacing: 0;
}

td {
    
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

.table1 {
    margin-top: 0;
    margin-right: auto;
    margin-left: auto;
}

.table1 td {
    border: 0px solid #333333;
    border-collapse: collapse;
    padding: 7px;
}

.odct_zhangpic {
    width: 160px;
    height: 160px;
    position: absolute;
    margin-top: -110px;
    clear: both;
    float: none;
    margin-left: 400px;
}
.break-page {
   page-break-after: always;
   background: lightblue;
}
.report-block {
    margin: 40px 0;
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
    <div class="cover break-page">
      ${reportName}
    </div>
    <section class="break-page catalogue">
      <div>目录</div>
      <#list data as detail>
        <div class="main-title">${detail.title}</div>
        <#list detail.children as child>
          <div class="sub-title">
            <a href="#${child.title}">${child.title}</a>
          </div>
        </#list>
      </#list>
    </section>

    <#list data as detail>      
      <div class="report-block  break-page">
        <div name="${detail.title}" class="main-title algn-center">${detail.title}</div>
        <#list detail.children as child>
          <div>
            <a name="${child.title}" class="sub-title">${child_index + 1}、 ${child.title}</a>
            <p>(数据质量：${child.data.quality})</p>
            <table width="96%" border="0" align="center" cellspacing="0" cellpadding="0" class="table">
                <tr>
                   <#list child.data.th as thDetail>
                     <td>${thDetail}</td>
                   </#list>
                </tr>
                <tr>
                   <#list child.data.detail as tdDetail>
                     <td>${tdDetail}</td>
                   </#list>
                </tr>
            </table>
          </div>
        </#list>
      </div>
    </#list>
</body>
</html>