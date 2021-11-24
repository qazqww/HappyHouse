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
  </div>
</template>

<script>
import { mapGetters } from "vuex";
import { listFavorite, deleteFavorite } from "@/api/favorite.js";

const memberStore = "memberStore";

export default {
  name: "MemberFavorite",
  data() {
    return {
      list: [],
    };
  },
  computed: {
    ...mapGetters(memberStore, ["checkUserInfo"]),
  },
  created() {
    listFavorite(
      this.checkUserInfo.userid,
      ({ data }) => {
        //   console.log(data);
        this.list = data;
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
