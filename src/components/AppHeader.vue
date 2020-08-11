<template>
  <div class="header" :class="{isIOS, isAndroid: !isIOS}">
    <van-nav-bar
      :title="header.title"
      :border="false"
      @click-left="onClickLeft"
    >
      <template slot="left">
        <van-icon name="arrow-left">
          <span v-if="isIOS">{{header.name || '请选择。'}}</span>
        </van-icon>
        <i class="close-icon" v-if="isIOS" v-show="header.showClose" @click.stop="closeApp">请选择</i>
        <van-icon
          v-else
          name="cross"
          class="close-icon"
          v-show="header.showClose"
          @click.stop="closeApp"
        />
      </template>
    </van-nav-bar>
  </div>
</template>

<script>
import native from '../utils/native'
import deviceInfo from '../utils/device'
// import { Button, NavBar } from 'vant'
export default {
  name: 'AppHeader',
  data () {
    return {
      isIOS: deviceInfo.isIOS,
      header: {
        name: window.sessionStorage.getItem('commonSelectHeader')
      }
    }
  },
  methods: {
    onClickLeft () {
      history.go(-1)
      let t
      if (this.$route.name === 'Home') {
        t = setTimeout(() => {
          this.closeApp()
        }, 200)
      }
      this.header.onClickLeft((isRejectOut) => {
        if (isRejectOut && t) {
          clearTimeout(t)
        }
      })
    },
    closeApp () {
      native.closeH5()
    }
  }
}
</script>
<style scoped lang="scss">
.isIOS {
  height: 44px;
}
.isAndroid {
  height: 48px;
}
.header {
  background: #fff;
  width: 100%;
  overflow: hidden;
  /deep/ .van-nav-bar {
    height: 100%;
    line-height: none;
    .van-nav-bar__left {
      height: 100%;
      display: flex;
      align-items: center;
      left: 8px; // 设计规范是16px，但是返回的箭头本身有一部分左空白
      .van-icon-arrow-left {
        display: flex;
        align-items: center;
        height: 100%;
        span {
          overflow: hidden;
          height: 100%;
          display: flex;
          align-items: center;
          // 移动端上面对于奇数的字体大小的影响
          margin-top: -4px;
        }
        &::before {
          font-size: 26px;
          color: #333;
        }
      }
    }
    .van-nav-bar__title {
      font-weight: 600;
      font-size: 17px;
      height: 100%;
      max-width: 30%;
      overflow: hidden;
      text-align: center;
    }
    .van-nav-bar__right {
      height: 100%;
      width: auto;
      overflow: hidden;
      display: flex;
      align-items: center;
    }
    .van-icon {
      font-size: 17px;
      color: #333;
    }
  }
  &-chat {
    //  左边的icon大小尺寸；目前占一个色块
    width: 26px;
    height: 26px;
    background: #ccc;
    font-size: 8px;
    font-style: normal;
    line-height: 26px;
    color: #fff;
    overflow: hidden;
    display: inline-block;
  }
}
.header-search {
  margin-right: 10px;
  font-size: 24px;
  vertical-align: baseline;
}
/deep/ .van-icon-search::before {
  font-size: 24px;
  font-weight: 600;
}
/deep/ .van-icon-cross::before {
  font-size: 24px;
}
.close-icon {
  height: 100%;
  display: flex;
  align-items: center;
  margin-left: 10px;
  font-style: normal;
  font-size: 17px;
  color: #333;
}
</style>
