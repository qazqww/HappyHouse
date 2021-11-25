<template>
  <div>
    <h2 class="text-center mb-5">답변</h2>
    <v-card
      class="mx-auto"
      color="primary"
      elevation="1"
      max-width="800"
      min-height="300"
      v-if="comments.length"
    >
      <v-container>
        <v-card
          class="mx-auto my-4"
          max-width="800"
          v-for="memo in comments"
          :key="memo.memono"
          elevation="5"
        >
          <v-list-item three-line>
            <v-list-item-content>
              <v-row justify="space-between">
                <v-col cols="auto">{{ memo.userid }}</v-col>
                <v-col cols="auto">{{ memo.memotime }}</v-col>
              </v-row>
              <v-list-item-subtitle>{{ memo.comment }}</v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
          <v-card-actions v-if="memo.userid == userInfo.userid">
            <v-btn
              class="ml-3"
              outlined
              rounded
              text
              @click="delMemo(memo.memono)"
            >
              삭제
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-container>
    </v-card>
    <v-container v-else
      ><v-card
        class="mx-auto mb-1 text-center"
        max-width="800"
        max-height="500"
        elevation="0"
        >답변이 존재하지 않습니다.</v-card
      >
    </v-container>
  </div>
</template>

<script>
import { mapState } from "vuex";
import { listMemo, deleteMemo } from "@/api/memo.js";
// import MemoListRow from "./MemoListRow.vue";

const memberStore = "memberStore";

export default {
  name: "MemoList",
  data() {
    return {
      comments: [],
    };
  },
  props: {
    no: Number,
  },
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
  mounted() {
    // console.log(this.no);
    listMemo(
      this.no,
      ({ data }) => {
        this.comments = data;
        // console.log(this.comments);
      },
      (error) => {
        console.log(error);
      }
    );
  },
  methods: {
    delMemo(no) {
      if (confirm("정말로 삭제하시겠습니까?")) {
        deleteMemo(
          no,
          () => {
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
