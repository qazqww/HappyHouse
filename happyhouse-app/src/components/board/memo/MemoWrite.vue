<template>
  <v-form @submit="onSubmit">
    <v-text-field
      id="userid"
      ref="userid"
      label="작성자"
      v-model="memo.userid"
      required
    >
    </v-text-field>
    <v-textarea
      id="comment"
      ref="comment"
      label="댓글 내용"
      v-model="memo.comment"
      required
    ></v-textarea>
    <v-btn type="submit" color="primary">작성</v-btn>
  </v-form>
</template>

<script>
import { mapGetters } from "vuex";
import { writeMemo } from "@/api/memo.js";

const boardStore = "boardStore";

export default {
  name: "MemoWrite",
  data() {
    return {
      memo: {
        userid: "admin",
        comment: "",
        articleno: 0,
      },
    };
  },
  computed: {
    ...mapGetters(boardStore, ["getArticleNo"]),
  },
  methods: {
    onSubmit(event) {
      event.preventDefault();
      let err = true;
      let msg = "";
      err &&
        !this.memo.comment &&
        ((msg = "내용을 입력해주세요"),
        (err = false),
        this.$refs.comment.focus());

      if (!err) alert(msg);
      else this.registMemo();
    },
    registMemo() {
      writeMemo(
        {
          userid: this.memo.userid,
          comment: this.memo.comment,
          articleno: this.getArticleNo,
        },
        ({ data }) => {
          let msg = "댓글 등록 중 문제가 발생했습니다.";
          if (data === "success") {
            msg = "댓글 등록이 완료되었습니다.";
          }
          alert(msg);
          this.$router.go();
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};
</script>

<style></style>
