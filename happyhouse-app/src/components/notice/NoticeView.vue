<template>
  <v-card elevation="10" shaped class="mx-auto" max-width="800" outlined>
    <v-list-item three-line>
      <v-list-item-content>
        <v-col></v-col>
        <v-list-item-title class="text-h5 mb-4">
          {{ article.subject }}
        </v-list-item-title>
        <v-col align="right">
          <v-list-item-subtitle
            >{{ article.regtime }} <br />작성자: {{ article.userid }}
          </v-list-item-subtitle>
        </v-col>
        <br />
        <br />
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
      <v-btn large color="primary" style="font-size: 15px" @click="moveUpdate">
        수정
      </v-btn>
      &nbsp;
      <v-btn large color="secondary" style="font-size: 15px" @click="delNotice">
        삭제
      </v-btn>
    </v-col>
    <br />
  </v-card>
</template>

<script>
import { mapState } from "vuex";
import { getNotice, deleteNotice } from "@/api/notice.js";

const memberStore = "memberStore";

export default {
  data() {
    return {
      article: {},
    };
  },
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
  created() {
    getNotice(
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
        name: "NoticeUpdate",
        params: { articleno: this.article.articleno },
      });
    },
    delNotice() {
      if (confirm("정말로 삭제하시겠습니까?")) {
        deleteNotice(
          this.$route.params.articleno,
          ({ data }) => {
            this.article = data;
            this.$router.push({ name: "NoticeList" });
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
