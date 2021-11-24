<template>
  <v-container>
    <v-row>
      <v-col>
        <v-card elevation="5" outlined shaped>
          <v-data-table
            :headers="headers"
            :items="notices"
            :page.sync="page"
            :items-per-page="itemsPerPage"
            hide-default-footer
            class="elevation-1"
            no-data-text="게시글이 없습니다."
            @page-count="pageCount = $event"
            @click:row="moveView"
          ></v-data-table>
        </v-card>
        <v-col>
          <div class="text-center pt-2">
            <v-pagination v-model="page" :length="pageCount"></v-pagination>
          </div>
          <v-col class="text-right">
            <v-btn color="primary" style="font-size: 15px" @click="moveWrite()"
              >글쓰기</v-btn
            >
          </v-col>
        </v-col>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapMutations, mapActions, mapState } from "vuex";

const noticeStore = "noticeStore";

export default {
  name: "NoticeList",
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
    ...mapState(noticeStore, ["notices"]),
  },
  methods: {
    ...mapActions(noticeStore, ["loadNotices"]),
    ...mapMutations(noticeStore, ["LOAD_NOTICES"]),
    moveWrite() {
      this.$router.push({ name: "NoticeWrite" });
    },
    moveView(value) {
      this.$router.push({ name: "NoticeView", params: value });
    },
  },
  created() {
    this.loadNotices();
  },
};
</script>

<style></style>
