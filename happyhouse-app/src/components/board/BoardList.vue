<template>
  <div>
    <v-data-table
      :headers="headers"
      :items="articles"
      :page.sync="page"
      :items-per-page="itemsPerPage"
      hide-default-footer
      class="elevation-1"
      @page-count="pageCount = $event"
      @click:row="moveView"
    ></v-data-table>
    <div class="text-center pt-2">
      <v-pagination v-model="page" :length="pageCount"></v-pagination>
    </div>
    <v-col class="text-right">
      <v-btn color="primary" @click="moveWrite()">글쓰기</v-btn>
    </v-col>
  </div>
</template>

<script>
import { mapMutations, mapActions, mapState } from "vuex";

const boardStore = "boardStore";

export default {
  name: "BoardList",
  data() {
    return {
      page: 1,
      pageCount: 0,
      itemsPerPage: 10,
      headers: [
        {
          text: "글번호",
          align: "start",
          sortable: false,
          value: "articleno",
        },
        { text: "제목", sortable: false, value: "subject" },
        { text: "글쓴이", sortable: false, value: "userid" },
        { text: "작성일", sortable: false, value: "regtime" },
        { text: "조회수", sortable: false, value: "hit" },
      ],
    };
  },
  computed: {
    ...mapState(boardStore, ["articles"]),
  },
  methods: {
    ...mapActions(boardStore, ["loadArticles"]),
    ...mapMutations(boardStore, ["LOAD_ARTICLES"]),
    moveWrite() {
      this.$router.push({ name: "BoardWrite" });
    },
    moveView(value) {
      this.$router.push({ name: "BoardView", params: value });
    },
  },
  created() {
    this.loadArticles();
  },
};
</script>

<style></style>
