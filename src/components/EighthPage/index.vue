<template>
  <div>
    <div class="a">
      这一年我们最喜欢在
      <span class="value"> {{ maxMonth[0] }} </span>点聊天 说的话 有<span
        class="value"
      >
        {{ maxMonth[1] }} </span
      >条
    </div>
    <div ref="chart" class="chart"></div>
  </div>
</template>

<script>
import * as echarts from "echarts";
import { hourGroup } from "@/data.json";
export default {
  data() {
    return {
      myChart: undefined,
      arr: hourGroup,
    };
  },
  computed: {
    maxMonth() {
      let max = this.arr[0];
      for (let i of this.arr) {
        if (i[1] > max[1]) {
          max = i;
        }
      }
      return max;
    },
  },
  mounted() {
    this.myChart = echarts.init(this.$refs.chart);
    this.myChart.setOption({
      tooltip: {},
      xAxis: {},
      yAxis: {},
      series: [
        {
          type: "line",
          data: this.arr,
          itemStyle: {
            color: "#d5cede",
          },
          clip: false,
          symbol: "none",
        },
      ],
      animationDuration: 5000,
    });
  },
};
</script>

<style scoped>
.chart {
  width: 100vw;
  height: 50vh;
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 1s;
  animation-fill-mode: backwards;
}
.a {
  padding-top: 15vh;
  animation-name: slide-top;
  animation-duration: 1s;
  animation-delay: 0.5s;
  animation-fill-mode: backwards;
}
</style>