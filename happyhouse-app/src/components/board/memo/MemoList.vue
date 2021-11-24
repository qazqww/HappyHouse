<template>
  <v-container>
    <v-card
      class="mx-auto mb-1"
      max-width="800"
      v-for="memo in comments"
      :key="memo.memono"
      elevation="10"
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
        console.log(this.comments);
      },
      (error) => {
        console.log(error);
      }
    );
  },
};
</script>

<style></style>
