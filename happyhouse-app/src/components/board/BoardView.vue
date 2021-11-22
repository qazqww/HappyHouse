<template>
  <v-container>
    <v-card class="mx-auto mb-5" max-width="800" outlined>
      <v-list-item three-line>
        <v-list-item-content>
          <div class="text-overline mb-4">{{ article.regtime }}</div>
          <v-list-item-title class="text-h5 mb-4">
            {{ article.subject }}
          </v-list-item-title>
          <v-list-item-subtitle class="mb-4"
            >작성자: {{ article.userid }}</v-list-item-subtitle
          >
          <v-card-text>
            {{ article.content }}
          </v-card-text>
        </v-list-item-content>

        <!-- <v-list-item-avatar
        tile
        size="80"
        color="grey"
      ></v-list-item-avatar> -->
      </v-list-item>

      <v-card-actions>
        <v-btn @click="moveUpdate" outlined rounded text> 수정 </v-btn>
        <v-btn @click="delArticle" outlined rounded text> 삭제 </v-btn>
      </v-card-actions>
    </v-card>
    <h3 class="text-left ml-5">댓글</h3>
    <memo-list :no="article.articleno" />
    <memo-write/>
  </v-container>
</template>

<script>
import { mapActions, mapMutations, mapState } from "vuex";
import MemoList from "./memo/MemoList.vue";
import MemoWrite from "./memo/MemoWrite.vue";
import { deleteArticle } from "@/api/board.js";

const boardStore = "boardStore";

export default {
  name: "BoardView",
  data() {
    return {};
  },
  computed: {
    ...mapState(boardStore, ["article"]),
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
    delArticle() {
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
