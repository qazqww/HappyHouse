<template>
  <div>
    <v-data-table
      :headers="headers"
      :items="notices"
      :page.sync="page"
      :items-per-page="itemsPerPage"
      hide-default-footer
      class="elevation-1"
      @page-count="pageCount = $event"
    ></v-data-table>
    <div class="text-center pt-2">
      <v-pagination v-model="page" :length="pageCount"></v-pagination>
    </div>
  </div>
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
      itemsPerPage: 4,
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
    getNotice() {
      this.loadNotices();
    },
  },
  created() {
    this.loadNotices();
  },
};
</script>

<style></style>
