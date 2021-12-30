<template>
  <div>
    <div class="a">
      今年我们一共发了
      <span class="value"> {{ count }} </span>
      条消息
    </div>
    <div class="b">
      其中有
      <span class="value"> {{ imgCount }} </span>
      是图片&nbsp; 其中有
      <span class="value"> {{ voiceCount }} </span>
      是语音
    </div>
    <div class="c">
      <div v-for="(count, word, index) in loveWord" :key="index">
        说{{ word }} <span class="value"> {{ count }} </span>次
      </div>
      <div>...</div>
    </div>
    <div class="d">比起网络<br />我们更喜欢在现实表达爱意</div>
  </div>
</template>

<script>
import data from "@/data.json";
export default {
  data() {
    return {
      ...data,
    };
  },
};
</script>

<style scoped>
.a {
  font-size: 5vw;
  padding-top: 15vh;
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: .5s;
  animation-fill-mode: backwards;
}
.b{
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 1s;
  animation-fill-mode: backwards;
}
.c{
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 2s;
  animation-fill-mode: backwards;
}
.d {
  padding-top: 10vh;
  font-size: 5vw;
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 2.5s;
  animation-fill-mode: backwards;
}

</style>