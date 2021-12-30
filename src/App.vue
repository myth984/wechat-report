<template>
  <div id="app" @click.capture.stop="next">
    <template v-if="isMobile">
      <FirstPage class="delay box" v-if="step === 1" @start="next"></FirstPage>
      <SecondPage
        class="delay box"
        v-if="step === 2"
        @click.native="next"
      ></SecondPage>
      <ThirdPage class="delay box" v-if="step === 3" @next="next"></ThirdPage>
      <ForthPage class="delay box" v-if="step === 4" @next="next"></ForthPage>
      <FifthPage class="delay box" v-if="step === 5" @next="next"></FifthPage>
      <SixthPage class="delay box" v-if="step === 6" @next="next"></SixthPage>
      <SeventhPage
        class="delay box"
        v-if="step === 7"
        @next="next"
      ></SeventhPage>
      <EighthPage class="delay box" v-if="step === 8" @next="next"></EighthPage>
      <NinthPage class="delay box" v-if="step === 9" @next="next"></NinthPage>
      <div v-if="step !== 9" class="footer"></div>
      <div :class="handleMask"></div>
    </template>
    <template v-else> 请用手机查看 </template>
  </div>
</template>

<script>
import FirstPage from "./components/FirstPage";
import SecondPage from "./components/SecondPage";
import ThirdPage from "./components/ThirdPage";
import ForthPage from "./components/ForthPage";
import FifthPage from "./components/FifthPage";
import SixthPage from "./components/SixthPage";
import SeventhPage from "./components/SeventhPage";
import EighthPage from "./components/EighthPage";
import NinthPage from "./components/NinthPage";
export default {
  name: "App",
  components: {
    FirstPage,
    SecondPage,
    ThirdPage,
    ForthPage,
    FifthPage,
    SixthPage,
    SeventhPage,
    EighthPage,
    NinthPage,
  },
  data() {
    return {
      step: 1,
      mask: true,
    };
  },
  computed: {
    handleMask() {
      return {
        mask: this.mask,
      };
    },
    isMobile() {
      return (
        /AppleWebKit.*Mobile/i.test(navigator.userAgent) ||
        /MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(
          navigator.userAgent
        )
      );
    },
  },
  watch: {
    step() {
      this.mask = false;
      setTimeout(() => {
        this.mask = true;
      });
    },
  },
  methods: {
    next() {
      if (this.step === 9) {
        return;
      }
      this.step++;
    },
  },
};
</script>

<style>
html,
body {
  padding: 0;
  margin: 0;
  height: 100vh;
  color: white;
  overflow: hidden;
}
#app {
  background-image: linear-gradient(#1f9ef4, #a1e1ff);
  height: 100vh;
  overflow: hidden;
  font-family: "Microsoft YaHei", 微软雅黑, "Microsoft JhengHei", 华文细黑,
    STHeiti, MingLiu;
  font-size: 4vw;
}
.box {
  padding: 5vw;
  padding-top: 10vw;
  overflow: hidden;
}

.delay {
  animation-name: delay-display;
  animation-duration: 0.5s;
  animation-delay: 0.3s;
  animation-fill-mode: backwards;
}
@keyframes delay-display {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
@keyframes slide-top {
  0% {
    opacity: 0;
    transform: translateY(10vh);
  }
  100% {
    opacity: 1;
    transform: translateY(0vh);
  }
}
.value {
  display: inline-block;
  padding: 5px;
  transform: scaleY(1.1) translateY(-5.2%);
  font-weight: bolder;
  color: #ebf45f;
}
</style>
<style scoped>
.footer {
  background-image: url("~@/assets/images/foot.png");
  background-size: cover;
  width: 100vw;
  height: 20vh;
  position: absolute;
  bottom: 0vh;
  overflow: hidden;
}
.mask {
  width: 100vw;
  height: 100vh;
  z-index: -1;
  position: absolute;
  top: 0;
  animation: up-move 1s;
  background-image: url("~@/assets/images/mask.png");
  background-repeat: repeat-x;
  background-size: contain;
}
@keyframes up-move {
  0% {
    transform: translateY(0);
    z-index: -1;
  }
  100% {
    transform: translateY(-100vh);
    z-index: 2;
  }
}
</style>
