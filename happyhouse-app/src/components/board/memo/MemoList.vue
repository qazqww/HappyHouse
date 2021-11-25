<template>
  <div>
    <h2 class="text-center">답변</h2>
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
        </v-card>
      </v-container>
    </v-card>
    <v-container v-else
      ><v-card class="mx-auto mb-1" max-width="800" max-height="500" elevation="0"
        >답변을 기다리는 중입니다...</v-card
      >
    </v-container>
  </div>
</template>

<script>
import { listMemo } from "@/api/memo.js";
// import MemoListRow from "./MemoListRow.vue";
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
  components: {
    // MemoListRow,
  },
  mounted() {
    console.log(this.no);
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
};
</script>

<style></style>
