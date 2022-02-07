<template>
  <div class="container">
    <AppHeader></AppHeader>
    <!-- 搜索 -->
    <van-search v-model="searchValue" placeholder="请输入联系人或群组名称" @search="search"/>
    <!--详细导航展示-->
    <div class="">
      <span>通讯录</span>
      >
      <span>外部单位</span>
    </div>
    <van-cell-group>
      <van-cell title="外部单位" is-link />
      <van-cell title="选择群聊" is-link />
      <van-cell>
        <template #title>
          <i>123</i>
          <span class="custom-title">单元格
            <div class="test"></div>
          </span>
        </template>
      </van-cell>
    </van-cell-group>
    <van-checkbox-group v-model="result">
      <van-cell-group title="最近聊天">
        <van-cell
          v-for="(item, index) in list"
          clickable
          :key="item"
          :title="`复选框 ${item}`"
          @click="toggle(index)"
        >
          <template #right-icon>
            <van-checkbox :name="item" ref="checkboxes" />
          </template>
        </van-cell>
      </van-cell-group>
    </van-checkbox-group>
  </div>
</template>

<script>
import AppHeader from './components/AppHeader'

export default {
  name: 'yylNpmPractice',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      searchValue: '',
      list: ['a', 'b'],
      result: []
    }
  },
  props: {
      propdata: {
          type: String,
          default: ''
      }
  },
  components: {
    AppHeader
  },
  methods: {
    toggle(index) {
      this.$refs.checkboxes[index].toggle();
    },
    search() {
      console.log(this.searchValue)
    }
  }
}
</script>
<style scoped lang="scss">
.container {
  font-size: 1.2rem;
  display: flex;
  flex-direction: column;
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
.test {
  width: 200px;
  height: 200px;
  background: url('./assets/logo.png');
}
</style>