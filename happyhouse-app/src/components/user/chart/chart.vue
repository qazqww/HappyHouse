<template>
  <div>
    <GChart type="LineChart" :data="chartData" :options="chartOptions" />
  </div>
</template>

<script>
import { GChart } from "vue-google-charts";
export default {
  components: {
    GChart,
  },
  props: {
    chartData: Array,
  },
  data() {
    return {
      //   chartData: [
      //     ["Year", "Sales", "Expenses", "Profit"],
      //     ["2014", 1000, 400, 200],
      //     ["2015", 1170, 460, 250],
      //     ["2016", 660, 1120, 300],
      //     ["2017", 1030, 540, 350],
      //     ["2018", 1030, 540, 350],
      //     ["2019", 1030, 540, 350],
      //   ],
      chartOptions: {
        chart: {
          title: "지역별 아파트 평균 매매가",
          subtitle: "단위(만 원)",
        },
      },
    };
  },
};
</script>

<style></style>
