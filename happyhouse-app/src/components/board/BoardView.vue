<template>
  <v-container>
    <v-card elevation="10" shaped class="mx-auto" max-width="800" outlined>
      <v-list-item three-line>
        <v-list-item-content>
          <v-col></v-col>
          <v-list-item-title class="text-h7 mb-4">
            Q. {{ article.subject }}
          </v-list-item-title>
          <v-col align="right">
            <v-list-item-subtitle
              >{{ article.regtime }} <br />작성자: {{ article.userid }}
            </v-list-item-subtitle>
          </v-col>
          <br />
          <br />
          <br />

          <v-card outlined class="mx-auto" min-height="100" max-width="700">
            <v-col align="left">
              {{ article.content }}
            </v-col>
          </v-card>
        </v-list-item-content>

        <!-- <v-list-item-avatar
        tile
        size="80"
        color="grey"
      ></v-list-item-avatar> -->
      </v-list-item>
      <br />
      <v-col align="right" v-if="userInfo.userid == article.userid">
        <v-btn
          large
          color="primary"
          style="font-size: 15px"
          @click="moveUpdate"
        >
          수정
        </v-btn>
        &nbsp;
        <v-btn
          large
          color="secondary"
          style="font-size: 15px"
          @click="delNotice"
        >
          삭제
        </v-btn>
      </v-col>
      <br />
    </v-card>
    <br />
    <br />
    <br />
    <br />
    <v-col align="left">
      <memo-list :no="this.$route.params.articleno" />
    </v-col>
    <br />
    <br />
    <br />
    <memo-write />
  </v-container>
</template>

<script>
import { mapActions, mapMutations, mapState } from "vuex";
import MemoList from "./memo/MemoList.vue";
import MemoWrite from "./memo/MemoWrite.vue";
import { deleteArticle } from "@/api/board.js";

const boardStore = "boardStore";
const memberStore = "memberStore";

export default {
  name: "BoardView",
  data() {
    return {};
  },
  computed: {
    ...mapState(boardStore, ["article"]),
    ...mapState(memberStore, ["userInfo"]),
  },
  components: {
    MemoList,
    MemoWrite,
  },
  methods: {
    ...mapActions(boardStore, ["getViewArticle"]),
    ...mapMutations(boardStore, ["GET_VIEW_ARTICLE"]),
    moveUpdate() {
      this.$router.replace({
        name: "BoardUpdate",
        params: { articleno: this.article.articleno },
      });
    },
    delNotice() {
      if (confirm("정말로 삭제하시겠습니까?")) {
        deleteArticle(
          this.article.articleno,
          ({ data }) => {
            this.article = data;
            this.$router.push({ name: "BoardList" });
          },
          (error) => {
            console.log(error);
          }
        );
      }
    },
  },
  created() {
    this.getViewArticle(this.$route.params.articleno);
    // getArticle(
    //   this.$route.params.articleno,
    //   ({ data }) => {
    //     this.article = data;
    //   },
    //   (error) => {
    //     console.log(error);
    //   }
    // );
  },
};
</script>

<style></style>
