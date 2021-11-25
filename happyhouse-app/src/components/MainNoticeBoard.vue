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
      <v-col cols="12" md="4">
        <v-card elevation="2" outlined class="px-5 py-3">
          <v-card-text>
            <div class="text-h5 text--primary mb-3">공지사항</div>
            <v-data-table
              :headers="headers"
              :items="notices"
              :items-per-page="5"
              hide-default-header
              hide-default-footer
              no-data-text="게시글이 없습니다."
              @click:row="moveNotice"
            />
          </v-card-text>
        </v-card>
      </v-col>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <v-col cols="12" md="4">
        <v-card elevation="2" outlined class="px-5 py-3">
          <v-card-text>
            <div class="text-h5 text--primary mb-3">QnA</div>
            <v-data-table
              :headers="headers"
              :items="articles"
              :items-per-page="5"
              hide-default-header
              hide-default-footer
              no-data-text="게시글이 없습니다."
              @click:row="moveQna"
            />
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapActions, mapState } from "vuex";
const noticeStore = "noticeStore";
const boardStore = "boardStore";

export default {
  name: "MainNoticeBoard",

  data: () => ({
    headers: [
      { text: "제목", sortable: false, value: "subject" },
    ],
  }),
  computed: {
    ...mapState(noticeStore, ["notices"]),
    ...mapState(boardStore, ["articles"]),
  },
  methods: {
    ...mapActions(noticeStore, ["loadNotices"]),
    ...mapActions(boardStore, ["loadArticles"]),
    moveNotice(value) {
      this.$router.push({ name: "NoticeView", params: value });
    },
    moveQna(value) {
      this.$router.push({ name: "BoardView", params: value });
    }
  },
  created() {
    this.loadNotices();
    this.loadArticles();
  },
};
</script>
