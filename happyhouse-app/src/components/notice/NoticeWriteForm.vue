<template>
  <v-form @submit="onSubmit" @reset="onReset">
    <v-text-field
      id="userid"
      ref="userid"
      label="작성자"
      v-model="article.userid"
      required
      readonly
    >
    </v-text-field>
    <v-text-field
      id="subject"
      ref="subject"
      label="제목"
      v-model="article.subject"
      required
    >
    </v-text-field>
    <v-textarea
      id="content"
      ref="content"
      label="내용"
      v-model="article.content"
      required
    ></v-textarea>
    <v-btn type="submit" color="primary" v-if="this.type === 'register'"
      >작성</v-btn
    >
    <v-btn type="submit" color="primary" v-else>수정</v-btn>
    &nbsp;&nbsp;<v-btn type="reset">취소</v-btn>
  </v-form>
</template>

<script>
import { mapState } from "vuex";
import { writeNotice, getNotice, modifyNotice } from "@/api/notice";

const memberStore = "memberStore";

export default {
  name: "NoticeWriteForm",
  data() {
    return {
      article: {
        articleno: "",
        userid: "",
        subject: "",
        content: "",
      },
    };
  },
  props: {
    type: { type: String },
  },
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
  created() {
    this.article.userid = this.userInfo.userid;
    if (this.type === "modify") {
      getNotice(
        this.$route.params.articleno,
        ({ data }) => {
          this.article = data;
        },
        (error) => {
          console.log(error);
        }
      );
    }
  },
  methods: {
    onSubmit(event) {
      event.preventDefault();

      let err = true;
      let msg = "";
      !this.article.userid &&
        ((msg = "작성자가 없습니다"), (err = false), this.$refs.userid.focus());
      err &&
        !this.article.subject &&
        ((msg = "제목을 입력해주세요"),
        (err = false),
        this.$refs.subject.focus());
      err &&
        !this.article.content &&
        ((msg = "내용을 입력해주세요"),
        (err = false),
        this.$refs.content.focus());

      if (!err) alert(msg);
      else this.type === "register" ? this.registNotice() : this.updateNotice();
    },
    onReset(event) {
      event.preventDefault();
      this.article.userid = "";
      this.article.subject = "";
      this.article.content = "";
      this.moveList();
    },
    registNotice() {
      writeNotice(
        {
          userid: this.article.userid,
          subject: this.article.subject,
          content: this.article.content,
        },
        ({ data }) => {
          let msg = "등록 처리시 문제가 발생했습니다.";
          if (data === "success") {
            msg = "등록이 완료되었습니다.";
          }
          alert(msg);
          this.moveList();
        },
        (error) => {
          console.log(error);
        }
      );
    },
    updateNotice() {
      modifyNotice(
        {
          articleno: this.article.articleno,
          userid: this.article.userid,
          subject: this.article.subject,
          content: this.article.content,
        },
        ({ data }) => {
          let msg = "수정 처리시 문제가 발생했습니다.";
          if (data === "success") {
            msg = "수정이 완료되었습니다.";
          }
          alert(msg);
          this.moveList();
        },
        (error) => {
          console.log(error);
        }
      );
    },
    moveList() {
      this.$router.push({ name: "NoticeList" });
    },
  },
};
</script>

<style></style>
