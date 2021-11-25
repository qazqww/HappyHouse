<template>
  <v-card
      class="mx-auto"
      elevation="0"
      max-width="800"
      min-height="300"
    >
    <v-row>
      <v-col>
        <v-form @submit="onSubmit">
          <v-text-field
            id="userid"
            ref="userid"
            label="작성자"
            v-model="memo.userid"
            required
            prepend-icon="mdi-account"
            readonly
          >
          </v-text-field>
          <v-textarea
            id="comment"
            ref="comment"
            label="댓글 내용"
            v-model="memo.comment"
            required
            prepend-icon="mdi-pencil"
          ></v-textarea>
          <v-btn large type="submit" color="primary" style="font-size: 20px"
            >작성</v-btn
          >
        </v-form>
      </v-col>
    </v-row>
  </v-card>
</template>

<script>
import { mapGetters, mapState } from "vuex";
import { writeMemo } from "@/api/memo.js";

const memberStore = "memberStore";
const boardStore = "boardStore";

export default {
  name: "MemoWrite",
  data() {
    return {
      memo: {
        userid: "",
        comment: "",
        articleno: 0,
      },
    };
  },
  computed: {
    ...mapState(memberStore, ["userInfo"]),
    ...mapGetters(boardStore, ["getArticleNo"]),
  },
  created() {
    this.memo.userid = this.userInfo.userid;
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

<style lang="css" scoped>
.v-text-field >>> input {
  font-size: 1.2em;
  font-weight: bold;
  width: 15em;
}
.v-text-field >>> label {
  font-size: 1em;
}
/* .v-text-field >>> button {
  font-size: 0.8em;
} */
</style>
