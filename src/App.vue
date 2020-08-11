<template>
  <div>
    <yylnpmpractice :propData='initData'/>
  </div>
</template>

<script>
import yylnpmpractice from './yyl-npm-practice'
export default {
    data(){
      return {
        initData: 'hello 你好.....'
      }
    },
    components:{
      yylnpmpractice
    }
}
</script>

<style>

</style>