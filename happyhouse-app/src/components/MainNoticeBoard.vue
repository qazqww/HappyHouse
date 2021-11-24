<template>
  <v-container id="dashboard" fluid tag="section">
    <v-row justify="center" align="center">
      <!-- <v-col cols="12" lg="4"> -->
      <!-- <h1 class="display-2 font-weight-bold mb-3">Welcome to Vuetify</h1> -->
      <!-- <p class="subheading font-weight-regular">
          For help and collaboration with other Vuetify developers,
          <br />please join our online
          <a href="https://community.vuetifyjs.com" target="_blank"
            >Discord Community</a
          >
        </p> -->
      <!-- </v-col> -->
      <v-col cols="12" md="5">
        <v-card elevation="0" class="px-5 py-3">
          <v-card-text>
            <v-data-table
              :headers="headers"
              :items="notices"
              :items-per-page="5"
              class="elevation-1"
              @click:row="moveView"
            />
          </v-card-text>
        </v-card>
      </v-col>
      <v-col cols="12" md="5">
        <v-card elevation="0" class="px-5 py-3">
          <v-card-text>
            <v-data-table
              :headers="headers"
              :items="articles"
              :items-per-page="5"
              class="elevation-1"
              @click:row="moveView"
            />
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapMutations, mapActions, mapState } from "vuex";
const noticeStore = "noticeStore";
const boardStore = "boardStore";

export default {
  name: " MainNoticeBoard",

  data: () => ({
    headers: [
      { text: "조회수", sortable: false, value: "hit" },
      { text: "제목", sortable: false, value: "subject" },
      { text: "글쓴이", sortable: false, value: "userid" },
    ],
  }),
  computed: {
    ...mapState(noticeStore, ["notices"]),
    ...mapState(boardStore, ["articles"]),
  },
  methods: {
    ...mapActions(noticeStore, ["loadNotices"]),
    ...mapActions(boardStore, ["loadArticles"]),
    ...mapMutations(noticeStore, ["LOAD_NOTICES"]),
    ...mapMutations(boardStore, ["LOAD_ARTICLES"]),
    moveWrite() {
      this.$router.push({ name: "NoticeWrite" }),
        this.$router.push({ name: "BoardWrite" });
    },
    moveView(value) {
      this.$router.push({ name: "NoticeView", params: value }),
        this.$router.push({ name: "BoardView", params: value });
    },
  },
  created() {
    this.loadNotices();
    this.loadArticles();
  },
};
</script>
