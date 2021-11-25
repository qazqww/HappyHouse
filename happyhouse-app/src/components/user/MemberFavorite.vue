<template>
  <div>
    <h2 class="mb-5">관심지역</h2>
    <v-row class="mb-5">
      <v-col cols="12" md="2" v-for="loc in list" :key="loc.favno">
        <v-card class="mr-auto" elevation="2" min-width="150" max-width="150" outlined>
          <v-list-item three-line>
            <v-list-item-content>
              <div class="text-overline mb-4">{{ loc.sidoname }}</div>
              <v-list-item-title class="text-h5 mb-1">
                {{ loc.gugunname }}
              </v-list-item-title>
            </v-list-item-content>
            <!-- <v-list-item-avatar tile size="80" color="grey"></v-list-item-avatar> -->
          </v-list-item>

          <v-card-actions>
            <v-btn outlined rounded text @click="deleteFav(loc.favno)">
              삭제
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
    <my-chart :chartData="chartData" v-if="list.length" />
    <div v-else>등록된 관심지역이 없습니다.</div>
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
      chartData: [["동 이름", "평균 매매가(만 원)"]],
    };
  },
  computed: {
    ...mapGetters(memberStore, ["checkUserInfo"]),
  },
  created() {
    this.chartData = [["동 이름", "평균 매매가(만 원)"]];
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
        });
        console.log(this.chartData);
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
