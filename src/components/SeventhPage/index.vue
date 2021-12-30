<template>
  <div>
    <div class="a">
      这一年我们
      <span class="value"> {{ maxMonth[0] }} </span>月 说的话最多 有<span
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
import { monthGroup } from "@/data.json";
export default {
  data() {
    return {
      myChart: undefined,
      arr: monthGroup,
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
          type: "bar",
          data: this.arr,
          itemStyle: {
            color: "#ebf45f",
          },
          clip :false
        },
      ],
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