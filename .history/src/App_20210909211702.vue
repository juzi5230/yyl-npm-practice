<template>
  <div>
    <!-- <yylnpmpractice :propData='initData'/> -->
  </div>
</template>

<script>
import yylnpmpractice from './yyl-npm-practice'
// import test2 from '/Users/cheng/workspace/yyl-npm-practice/src/utils/test2.ftl'
import test2 from '/Users/chengcheng/gitworkspace/yyl-npm-practice/src/utils/test2.ftl'
// import test2 from '/Users/cheng/workspace/yyl-npm-practice/src/utils/1a1112.ftl '
import a from './utils/a'
import $ from './utils/jquery'
export default {
    data(){
      return {
        initData: 'hello 你好.....'
      }
    },
    components:{
      yylnpmpractice
    },
    mounted () {
      // document.querySelector('#app').innerHTML = test2({    propA: 'valA',    propB: 'valB'})
      // debugger
      $('body').html(test2({   reportName: '浙江宁波IDC数据中心数据质量报告', 
      data: [
        {
          title: '数据中心数据质量报告',
          children: [
            {
              title: '水冷系统静态资产数据',
              data: {
                quality: '优',
                th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                detail: [100, 80, 300, 100, 100]
              }
            }
          ]
        },
        {
          title: '数据中心数据质量报告',
          children: [
            {
              title: '水冷系统静态资产数据',
              data: {
                quality: '优',
                th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                detail: [100, 80, 300, 100, 100]
              }
            }
          ]
        },
        {
          title: '数据中心数据质量报告',
          children: [
            {
              title: '水冷系统静态资产数据',
              data: {
                quality: '优',
                th: ['实际上传/条', '正确上传/条', '共需上传字段/条', '异常字段/条', '空字段/条'],
                detail: [100, 80, 300, 100, 100]
              }
            }
          ]
        }
      ],
      propA: 'valA',    propB: 'valB'}));
    }
}
</script>

<style>

</style>