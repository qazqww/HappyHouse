<template>
  <v-card class="mx-auto" max-width="800" outlined>
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
</template>

<script>
import { getArticle, deleteArticle } from "@/api/board.js";

export default {
  data() {
    return {
      article: {},
    };
  },
  created() {
    getArticle(
      this.$route.params.articleno,
      ({ data }) => {
        this.article = data;
      },
      (error) => {
        console.log(error);
      }
    );
  },
  methods: {
    moveUpdate() {
      this.$router.replace({
        name: "BoardUpdate",
        params: { articleno: this.article.articleno },
      });
    },
    delArticle() {
      if (confirm("정말로 삭제하시겠습니까?")) {
        deleteArticle(
          this.$route.params.articleno,
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
};
</script>

<style></style>
