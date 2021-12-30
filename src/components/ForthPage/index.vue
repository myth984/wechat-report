<template>
  <div>
    <div class="a">
      这一年 我们说过最长的一句话 <span class="value">{{ content.length }}</span
      >字
    </div>
    <div class="b">
      {{ content.substring(0, 100) }}
    </div>
    <div class="c">...</div>
    <div class="d">
      {{ time }}
    </div>
  </div>
</template>

<script>
import { longMsg } from "@/data.json";
export default {
  data() {
    return {
      ...longMsg,
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
  animation-delay: 0.5s;
  animation-fill-mode: backwards;
}
.b {
  padding-top: 5vh;
  white-space: normal;
  text-overflow: ellipsis;
  overflow: hidden;
  line-height: 2;
  color: ebf45f;
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 1s;
  animation-fill-mode: backwards;
}
.c{
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 1s;
  animation-fill-mode: backwards;
}
.d {
  text-align: right;
  padding-top: 3vh;
  font-weight: bolder;
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 1.5s;
  animation-fill-mode: backwards;
}
</style>