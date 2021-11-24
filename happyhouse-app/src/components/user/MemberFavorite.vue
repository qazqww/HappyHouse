<template>
  <div>
    <h2>관심지역</h2>
    <div v-for="loc in list" :key="loc.favno">
      <!-- {{ loc.favno }} -->
      {{ loc.sidoname }}
      {{ loc.gugunname }}
      <!-- {{ loc.addtime }} -->
      <v-btn @click="deleteFav(loc.favno)">X</v-btn>
    </div>
    <my-chart :chartData="chartData" />
  </div>
</template>

<script>
import { mapGetters } from "vuex";
import { listFavorite, deleteFavorite } from "@/api/favorite.js";
import { getValue } from "@/api/apartvalue.js";
import MyChart from "@/components/user/chart/chart.vue";

const memberStore = "memberStore";

export default {
  name: "MemberFavorite",
  components: {
    MyChart,
  },
  data() {
    return {
      list: [],
      chartData: [["동 이름", "평균 매매가"]],
    };
  },
  computed: {
    ...mapGetters(memberStore, ["checkUserInfo"]),
  },
  created() {
    this.chartData = [["동 이름", "평균 매매가"]];
    listFavorite(
      this.checkUserInfo.userid,
      ({ data }) => {
        this.list = data;
        data.forEach((e) => {
          getValue(
            e.guguncode,
            ({ data }) => {
              this.chartData.push([e.gugunname, data.average]);
            },
            (error) => {
              console.log(error);
            }
          );
          console.log(this.chartData);
        });
      },
      (error) => {
        console.log(error);
      }
    );
  },
  methods: {
    deleteFav(no) {
      if (confirm(`삭제하시겠습니까?`)) {
        deleteFavorite(
          no,
          ({ data }) => {
            console.log(data);
            this.$router.go();
          },
          (error) => {
            console.log(error);
          }
        );
      }
    },
  },
};
</script>

<style></style>
